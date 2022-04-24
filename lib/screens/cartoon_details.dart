import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kids_introduce_with_animal/widget/header.dart';
import '../data.dart';

class AnimalDetails extends StatelessWidget {
  const AnimalDetails({Key? key, required this.cartoon}) : super(key: key);
  final CartoonInfo cartoon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cartoon.name,
        style: const TextStyle(color: Colors.black, fontSize: 30.0),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: cartoon.color,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
              color: cartoon.color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              ),
            ),
            child: GestureDetector(
              child: Center(
                child: Hero(
                  tag: cartoon.iconImage,
                  child: Image(
                    image: AssetImage(cartoon.iconImage),
                  ),
                )
              ),
              onTap: (){
                Get.back();
              },
            ),
          ),
          Container(
            height: 300,
            color: Colors.white,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Header(text:cartoon.name),
                   SubHeader(text: cartoon.description),
                   SizedBox(height: 10,),
                   Header(text: "Genre"),
                   SubHeader(text: cartoon.type),
                   SizedBox(height: 10.0,),
                   
                 ],

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
