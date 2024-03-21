import 'package:quizapp/model/category_screen_models/category_model.dart';

class CategoryScreenController {
  static List<CategoryModel> categories = [
    CategoryModel(
      image:
          "https://images.pexels.com/photos/8303862/pexels-photo-8303862.jpeg?auto=compress&cs=tinysrgb&w=600",
      catName: "Sports",
      totalQns: 5,
    ),
    CategoryModel(
      image:
          "https://images.pexels.com/photos/3825572/pexels-photo-3825572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      catName: "Chemistry",
      totalQns: 5,
    ),
    CategoryModel(
      image:
          "https://images.pexels.com/photos/374918/pexels-photo-374918.jpeg?auto=compress&cs=tinysrgb&w=600",
      catName: "Math",
      totalQns: 5,
    ),
    CategoryModel(
      image:
          "https://images.pexels.com/photos/7443905/pexels-photo-7443905.jpeg?auto=compress&cs=tinysrgb&w=600",
      catName: "History",
      totalQns: 5,
    ),
  ];
}
