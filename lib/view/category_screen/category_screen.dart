// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/controller/category_screen_controller.dart';
import 'package:quizapp/core/constants/color_contants.dart';
import 'package:quizapp/view/quiz_screen/quiz_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedCategory;
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text("Hi, Angel"),
                titleTextStyle: TextStyle(
                    color: ColorConstant.primaryWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
                subtitle: Text("Let's make this day more productive"),
                subtitleTextStyle: TextStyle(color: ColorConstant.primaryWhite),
                trailing: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1310474/pexels-photo-1310474.jpeg?auto=compress&cs=tinysrgb&w=600")),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.greyOp30,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text("Choose a category",
                        style: TextStyle(
                            color: ColorConstant.primaryWhite,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("Let's play",
                  style: TextStyle(
                      color: ColorConstant.primaryWhite, fontSize: 18)),
              SizedBox(height: 15),
              GridView.builder(
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 230,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          if (index == 0) {
                            selectedCategory = "Sports";
                          } else if (index == 1) {
                            selectedCategory = "Chemistry";
                          } else if (index == 2) {
                            selectedCategory = "Math";
                          } else {
                            selectedCategory = "History";
                          }

                          print(selectedCategory);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizScreen(
                                    selectedCategory: selectedCategory),
                              ));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: ColorConstant.greyOp30,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                  CategoryScreenController
                                      .categories[index].image,
                                  fit: BoxFit.cover),
                              SizedBox(height: 10),
                              Text(
                                CategoryScreenController
                                    .categories[index].catName,
                                style: TextStyle(
                                    color: ColorConstant.primaryWhite,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${CategoryScreenController.categories[index].totalQns} questions",
                                style: TextStyle(
                                    color: ColorConstant.primaryGrey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
