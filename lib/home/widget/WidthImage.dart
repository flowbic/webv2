import 'package:flutter/material.dart';

class WidthImage extends StatelessWidget {
  WidthImage(this.image);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage(this.image),
            fit: BoxFit.fitWidth),
        color: Colors.black54,
        // boxShadow: ,
      ),
    );
  }
}
