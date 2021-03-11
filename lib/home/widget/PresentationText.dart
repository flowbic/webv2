import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PresentationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        padding:
            EdgeInsets.only(left: screenWidth * 0.2, right: screenWidth * 0.2),
        width: screenWidth,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Center(
          child: AutoSizeText.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Lorem ipsum dolor sit '),
                TextSpan(
                    text: 'amet', style: TextStyle(color: Colors.yellow[800])),
                TextSpan(text: ', consectetur adipiscing '),
                TextSpan(text: 'elit', style: TextStyle(color: Colors.red)),
                TextSpan(text: ', sed do eiusmod tempor incididunt ut '),
                TextSpan(text: 'labore', style: TextStyle(color: Colors.blue)),
                TextSpan(text: ' et dolore magna aliqua'),
              ],
            ),
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
            minFontSize: 20,
            maxLines: 3,
          ),
        ),
      ),
    );
  }
}
