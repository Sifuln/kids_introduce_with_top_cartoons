import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    );
  }
}

class SubHeader extends StatelessWidget {
  const SubHeader({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'PatrickHand-Regular'),
      ),
    );
  }
}

