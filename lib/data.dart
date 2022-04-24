import 'package:flutter/material.dart';

class CartoonInfo{
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final Color color;
  final String paragraph;
  final List<String> images;
  final String type;


  CartoonInfo
      ( this.position,{
    required this.name,
    required this.iconImage,
    required this.description,
    required this.color,
    required this.paragraph,
    required this.images,
    required this.type,});
}

List<String> img = [
  
];

String par = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
    " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    " It has survived not only five centuries, but also the leap into electronic typesetting,"
    " remaining essentially unchanged. It was popularised in the 1960s with the release of"
    " Letraset sheets containing Lorem Ipsum passages,"
    " and more recently with desktop publishing software like Aldus PageMaker "
    "including versions of Lorem Ipsum.";

List<CartoonInfo> animallist = [
  CartoonInfo(1,
      name: 'The Simpsons',
      iconImage: 'assets/c_simpsons.png',
      description: 'family deal with comical situations and the ups-and-downs of life',
      paragraph: "Matt Groening's subversive, animated satire about Springfield's hapless first family as they,"
      " and a host of zany characters, stumble their way through life. ",
      color: Colors.red,
      images: img,
      type: 'Animated sitcom',

      ),
  CartoonInfo(2,
    name: 'The Flintstones',
    iconImage: 'assets/c_fled_flinstone.png',
    color: Colors.lightBlueAccent,
    description: 'Rock-solid animated sitcom about a Stone Age family in the prehistoric town of Bedrock.',
    paragraph: "The Flintstones is an American animated sitcom produced by Hanna-Barbera Productions. The series takes place in a romanticized Stone Age setting and follows the activities of the titular family, the Flintstones, and their next-door neighbors",
    images: [
    ],
    type: 'Drama',

  ),
  CartoonInfo(3,
    name: 'Batman',
    color: Colors.grey,
    iconImage: 'assets/batman.png',
    description: 'A moody Caped Crusader defends Gotham City against the usual suspects in this animated series. ',
    paragraph: "Batman is a superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger, and debuted in the 27th issue of the comic book Detective Comics on March 30, 1939",
    images: [
    ],
    type: 'Action',

  ),
  CartoonInfo(4,
    name: 'Family Guy',
    color: Colors.orangeAccent,
    iconImage: 'assets/c_family.png',
    description: "Animated antics of the constantly grousing Griffins, a family that put some fun in dysfunctional",
    paragraph:  "Peter Griffin and his family of two teenagers, a smart dog, a devilish baby and his wife find themselves in some of the most hilarious scenarios.",
    images: [],
    type: "Animated sitcom",

  ),
  CartoonInfo(5,
    name: 'Rocky and His Friends',
    color: Colors.black,
    iconImage: 'assets/c_rocky.png',
    description: "Rocket J. Squirrel and Bullwinkle Moose starred in this animated series,  thwarting the evildoings of Mr. Big, Boris and Natasha",
    paragraph: 'Rocket J. Squirrel and Bullwinkle Moose starred in this animated series,  thwarting the evildoings of Mr. Big, Boris and Natasha',
    images: [''],
    type: 'Comedy',

  ),
  CartoonInfo(6,
    name: 'Tom and Jerry',
    color: Colors.pinkAccent,
    iconImage: 'assets/c_tom.png',
    description: 'Tom and Jerry is an American animated media franchise and series of comedy short films',
    paragraph:"Tom and Jerry is an American animated media franchise and series of comedy short films",
    images: [],
    type: "Humor",

  )
];