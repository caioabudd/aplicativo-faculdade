import 'package:flutter/material.dart';


class SlideTile extends StatelessWidget {
 
 
final String image;

  const SlideTile({super.key, required this.image}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom:100, right: 30, left: 30, ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(this.image),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
          color: Colors.black87,
          blurRadius: 30,
          offset: Offset(20, 20)
          )
        ]
      ),
    );
  }
}


