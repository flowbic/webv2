import 'package:flutter/material.dart';

class PageViewExperiment extends StatelessWidget {
  // final Color[] = [];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      clipBehavior: Clip.antiAlias,
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.width / 3,
          ),
          Container(
            color: Colors.black54,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.width / 3,
          ),
          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.width / 3,
          ),
        ],
      ),
    ));
  }
}
