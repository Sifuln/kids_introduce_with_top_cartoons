import 'package:flutter/material.dart';
import 'package:kids_introduce_with_animal/data.dart';
import 'package:kids_introduce_with_animal/screens/cartoon_details.dart';
import 'package:kids_introduce_with_animal/widget/cartoon_card.dart';
import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CartoonInfo> animal =[];
  @override
  void initState() {
    animal = animallist;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cartoon",style: TextStyle(color: Colors.black, fontSize: 30.0),),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.filter_list, color: Colors.amber, size: 40.0,),
          actions:  const [
            Image(
              image: AssetImage('assets/c_tom.png'),
            )
          ],
        ),
        body: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(5.0),
          itemCount: animal.length,
          itemBuilder: (BuildContext context, int index) =>
          CartoonCard(cartoon: animal[index], onPressed: (){
            Get.to(AnimalDetails(cartoon: animal[index]));
          }),

        ),
      ),
    );
  }
}
