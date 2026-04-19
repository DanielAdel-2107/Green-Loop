import 'package:green_loop/core/utilies/assets/images/app_images.dart';
import 'package:green_loop/features/customer/categories/models/category_model.dart';
import 'package:green_loop/features/customer/category_details/models/category_products_model.dart';
import 'package:green_loop/generated/locale_keys.g.dart';

class AppConstants {
  static List<CategoryModel> categoryProducts = [
    CategoryModel(
      name: LocaleKeys.categoryProducts_Plastic_title,
      image: AppImages.plasticImage,
      price: 4,
      value: "Plastic",
      products: [
        CategoryProductsModel(
            image: AppImages.chairImage,
            value: "Chair",
            name: LocaleKeys.categoryProducts_Plastic_Chair),
        CategoryProductsModel(
            image: AppImages.toyImage,
            value: "Toy",
            name: LocaleKeys.categoryProducts_Plastic_Toy),
        CategoryProductsModel(
            image: AppImages.cleanImage,
            value: "Cleaning Tools",
            name: LocaleKeys.categoryProducts_Plastic_CleaningTools),
        CategoryProductsModel(
            image: AppImages.coolerImage,
            value: "Cooler",
            name: LocaleKeys.categoryProducts_Plastic_Cooler),
        CategoryProductsModel(
            image: AppImages.foodContainerImage,
            value: "Food Containers",
            name: LocaleKeys.categoryProducts_Plastic_FoodContainers),
        CategoryProductsModel(
            image: AppImages.otherImage,
            value: "Other",
            name: LocaleKeys.categoryProducts_Plastic_Other),
      ],
    ),
    CategoryModel(
      price: 3.5,
      value: "E-Waste",
      name: LocaleKeys.categoryProducts_EWaste_title,
      image: AppImages.eWasteImage,
      products: [
        CategoryProductsModel(
            image: AppImages.remoteControlsImage,
            value: "Remote Controls",
            name: LocaleKeys.categoryProducts_EWaste_RemoteControls),
        CategoryProductsModel(
            image: AppImages.televisionImage,
            value: "Televisions",
            name: LocaleKeys.categoryProducts_EWaste_Televisions),
        CategoryProductsModel(
            image: AppImages.cablesImage,
            value: "Chargers & Cables",
            name: LocaleKeys.categoryProducts_EWaste_ChargersCables),
        CategoryProductsModel(
            image: AppImages.mouseKeyboardImage,
            value: "Keyboards & Mice",
            name: LocaleKeys.categoryProducts_EWaste_KeyboardsMice),
        CategoryProductsModel(
            image: AppImages.headphoneImage,
            value: "Headphones",
            name: LocaleKeys.categoryProducts_EWaste_Headphones),
        CategoryProductsModel(
            image: AppImages.otherImage,
            value: "Other",
            name: LocaleKeys.categoryProducts_EWaste_Other),
      ],
    ),
    CategoryModel(
      name: LocaleKeys.categoryProducts_Glass_title,
      image: AppImages.glassImage,
      value: "Glass",
      price: 9,
      products: [
        CategoryProductsModel(
            image: AppImages.bottleImage,
            value: "Wine Bottles",
            name: LocaleKeys.categoryProducts_Glass_WineBottles),
        CategoryProductsModel(
            image: AppImages.jarImage,
            value: "Jars",
            name: LocaleKeys.categoryProducts_Glass_Jar),
        CategoryProductsModel(
            image: AppImages.drinkingGlassImage,
            value: "Drinking Glass",
            name: LocaleKeys.categoryProducts_Glass_DrinkingGlass),
        CategoryProductsModel(
            image: AppImages.brokenImage,
            value: "Broken Glass",
            name: LocaleKeys.categoryProducts_Glass_BrokenGlass),
        CategoryProductsModel(
            image: AppImages.plateImage,
            value: "Lamp",
            name: LocaleKeys.categoryProducts_Glass_Lamp),
        CategoryProductsModel(
            image: AppImages.bowlImage,
            value: "Bowl",
            name: LocaleKeys.categoryProducts_Glass_Bowl),
        CategoryProductsModel(
            image: AppImages.otherImage,
            value: "Other",
            name: LocaleKeys.categoryProducts_Glass_Other),
      ],
    ),
    CategoryModel(
      price: 2.5,
      name: LocaleKeys.categoryProducts_Metal_title,
      value: "Metal",
      image: AppImages.metalImage,
      products: [
        CategoryProductsModel(
            image: AppImages.tinCanImage,
            value: "Tin Can Lid",
            name: LocaleKeys.categoryProducts_Metal_TinCanLid),
        CategoryProductsModel(
            image: AppImages.saucepanImage,
            value: "Saucepan",
            name: LocaleKeys.categoryProducts_Metal_Saucepan),
        CategoryProductsModel(
            image: AppImages.foilImage,
            value: "Aluminum Foil",
            name: LocaleKeys.categoryProducts_Metal_AluminumFoil),
        CategoryProductsModel(
            image: AppImages.wrenchImage,
            value: "Wrench",
            name: LocaleKeys.categoryProducts_Metal_Wrench),
        CategoryProductsModel(
            image: AppImages.screwImage,
            value: "Screw",
            name: LocaleKeys.categoryProducts_Metal_Screw),
        CategoryProductsModel(
            image: AppImages.canImage,
            value: "Can",
            name: LocaleKeys.categoryProducts_Metal_Can),
        CategoryProductsModel(
            image: AppImages.otherImage,
            value: "Other",
            name: LocaleKeys.categoryProducts_Metal_Other),
      ],
    ),
    CategoryModel(
      name: LocaleKeys.categoryProducts_Paper_title,
      image: AppImages.paperImage,
      value: "Paper",
      price: 12,
      products: [
        CategoryProductsModel(
            image: AppImages.noteBookImage,
            value: "Notebooks",
            name: LocaleKeys.categoryProducts_Paper_Notebooks),
        CategoryProductsModel(
            image: AppImages.takeoutContainerImage,
            value: "Takeout Container",
            name: LocaleKeys.categoryProducts_Paper_TakeoutContainer),
        CategoryProductsModel(
            image: AppImages.newsPaperImage,
            value: "Newspaper",
            name: LocaleKeys.categoryProducts_Paper_Newspaper),
        CategoryProductsModel(
            image: AppImages.officePaperImage,
            value: "Office Paper",
            name: LocaleKeys.categoryProducts_Paper_OfficePaper),
        CategoryProductsModel(
            image: AppImages.bagImage,
            value: "Paper Bag",
            name: LocaleKeys.categoryProducts_Paper_PaperBag),
        CategoryProductsModel(
            image: AppImages.otherImage,
            value: "Other",
            name: LocaleKeys.categoryProducts_Paper_Other),
      ],
    ),
    CategoryModel(
      price: 6,
      name: LocaleKeys.categoryProducts_Cardboard_title,
      image: AppImages.cardboardImage,
      value: "Cardboard",
      products: [
        CategoryProductsModel(
            image: AppImages.coffeeCupImage,
            value: "Coffee Cup",
            name: LocaleKeys.categoryProducts_Cardboard_CoffeeCup),
        CategoryProductsModel(
            image: AppImages.sheetImage,
            value: "Cardboard Sheet",
            name: LocaleKeys.categoryProducts_Cardboard_CardboardSheet),
        CategoryProductsModel(
            image: AppImages.tubeImage,
            value: "Cardboard Tube",
            name: LocaleKeys.categoryProducts_Cardboard_CardboardTube),
        CategoryProductsModel(
            image: AppImages.boxImage,
            value: "Cardboard Box",
            name: LocaleKeys.categoryProducts_Cardboard_CardboardBox),
        CategoryProductsModel(
            image: AppImages.otherImage,
            value: "Other",
            name: LocaleKeys.categoryProducts_Cardboard_Other),
      ],
    ),
  ];
}
