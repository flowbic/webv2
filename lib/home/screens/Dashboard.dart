import 'package:flutter/material.dart';
import 'package:webv2/home/widget/CoverImageScreen.dart';
import 'package:webv2/home/widget/PageViewExperiment.dart';
import 'package:webv2/home/widget/PresentationText.dart';
import 'package:webv2/home/widget/ScrollExperiment.dart';
import 'package:webv2/home/widget/WidthImage.dart';
import 'package:webv2/home/widget/ClientsCarousel.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SliverGridDelegateWithFixedCrossAxisCount _gridDelegate =
        const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8, childAspectRatio: 0.5);
    return Scaffold(
      body: CustomScrollView(
        // physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            ClientsCarousel(),
            PresentationText(),
            // ScrollExperiment(),
            WidthImage('/images/group_image.jpeg'),
            CoverImageScreen('/images/group_image.jpeg'),
            PageViewExperiment(),
          ])),
          SliverGrid(
            gridDelegate: _gridDelegate,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Text('lkjsdlfkjasd');
              },
              childCount: 8,
              semanticIndexOffset: 1,
            ),
          ),
        ],
      ),
    );
  }
}
