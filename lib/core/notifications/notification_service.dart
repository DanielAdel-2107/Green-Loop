import 'dart:async';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:green_loop/core/cache/cache_helper.dart';
import 'package:green_loop/core/di/dependancy_injection.dart';
import 'package:green_loop/core/helper/show_custom_dialog.dart';
import 'package:green_loop/core/network/supabase/database/get_stream_data_with_spcific_id.dart';
import 'package:green_loop/features/auth/sign_in/models/user_model.dart';
import 'package:green_loop/features/customer/profile/models/voucher_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class NotificationService {
  StreamSubscription? subscription;
  int retryCount = 0;
  final int maxRetries = 3;
  final Set<String> _processedIds = {}; // Prevent duplicate notifications

  void listenToRecycleRequests() {
    subscription?.cancel();
    _processedIds.clear();

    final user = getIt<SupabaseClient>().auth.currentUser;
    if (user == null) {
      return;
    }

    subscription = streamDataWithSpecificId(
      tableName: "vouchers",
      primaryKey: "user_id",
      id: user.id,
    ).listen(
      (data) async {
        try {
          final currentUser = getIt<SupabaseClient>().auth.currentUser;
          if (currentUser == null) {
            subscription?.cancel();
            return;
          }

          if (data.isNotEmpty) {
            final vouchers = data.map((e) => VoucherModel.fromJson(e)).toList();
            final unreadVouchers = vouchers
                .where((v) => v.read == false && !_processedIds.contains(v.id))
                .toList();

            for (var voucher in unreadVouchers) {
              // Mark as processed immediately
              _processedIds.add(voucher.id);

              // Show dialog safely
              showCustomDialog(
                title: "Congrats",
                description: "You have a new voucher : ${voucher.voucher}",
                dialogType: DialogType.noHeader,
              );

              // Update database and local state
              await updateVoucher(voucher);
              await updateUserModel();
            }
          }
        } catch (e) {
          print("❌ Error processing voucher notification: $e");
        }
      },
      onError: (error) {
        retryCount++;
        if (retryCount < maxRetries) {
          Future.delayed(const Duration(seconds: 2), () {
            listenToRecycleRequests();
          });
        } else {
          print("❌ فشل الإشتراك في الطلبات: $error");
        }
      },
    );
  }

  Future<void> updateVoucher(VoucherModel voucher) async {
    final supabase = getIt<SupabaseClient>();
    final userId = supabase.auth.currentUser?.id;
    if (userId == null) return;

    try {
      // 1. Mark voucher as read
      await supabase.from("vouchers").update({"read": true}).eq("id", voucher.id);

      // 2. Get current user voucher balance
      final userData = await supabase
          .from("customerss")
          .select('voucher')
          .eq('id', userId)
          .single();

      final double currentVoucher =
          (userData['voucher'] as num?)?.toDouble() ?? 0.0;
      final double newVoucher = currentVoucher + voucher.voucher;

      // 3. Update user total voucher balance
      await supabase
          .from("customerss")
          .update({"voucher": newVoucher}).eq("id", userId);
    } catch (e) {
      print("❌ Error updating voucher in database: $e");
    }
  }

  Future<void> updateUserModel() async {
    final supabase = getIt<SupabaseClient>();
    final userId = supabase.auth.currentUser?.id;
    if (userId == null) return;

    try {
      final userDataAfterUpdate = await supabase
          .from("customerss")
          .select()
          .eq('id', userId)
          .single();

      await getIt<CacheHelper>()
          .saveUserModel(UserModel.fromJson(userDataAfterUpdate));
    } catch (e) {
      print("❌ Error updating user model in cache: $e");
    }
  }

  void dispose() {
    subscription?.cancel();
  }
}
