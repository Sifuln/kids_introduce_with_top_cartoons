import 'package:flutter/material.dart';
import 'package:kids_introduce_with_animal/data.dart';

class CartoonCard extends StatelessWidget {
  const CartoonCard({Key? key,required this.cartoon, required this.onPressed}) : super(key: key);
  final CartoonInfo cartoon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(

        width: double.infinity,
        height: 230.0,
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Positioned(
              left: 50,
              child: Container(
                decoration: BoxDecoration(
                    color: cartoon.color,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                constraints: const BoxConstraints(maxWidth: 330,maxHeight: 200),
              ),
            ),
             Positioned(
                top: 25.0,
                child: Hero(
                  tag: cartoon.name,
                  transitionOnUserGestures: true,
                  child: Container(
                    child: Image(
                      image: AssetImage(cartoon.iconImage),
                      height: 150.0,
                      width: 150.0,
                    ),
                  ),
                )),
             Positioned(
              top: 25.0,
              left: 160.0,
              child: Text(
                cartoon.name,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Positioned(
                left: 162.0,
                top: 15.0,
                child: Container(
                  width: 200,
                  height: 200,
                  child: Opacity(
                    opacity: 0.8,
                    child: Center(
                      child: Text(
                        cartoon.description,
                        style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontFamily: "PatrickHand-Regular"
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
