import 'package:flutter/material.dart';

class DiscoverLine extends StatelessWidget{
  const DiscoverLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 0.5,
      margin: EdgeInsets.only(bottom: 18),
      decoration: const BoxDecoration(
        color: Colors.black12
      ),
    );
  }

}