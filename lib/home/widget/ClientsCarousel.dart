import 'package:carousel_slider/carousel_slider.dart';
import 'package:webv2/home/widget/Responsive.dart';
import 'package:flutter/material.dart';

class ClientsCarousel extends StatefulWidget {
  @override
  _ClientsCarouselState createState() => _ClientsCarouselState();
}

class _ClientsCarouselState extends State<ClientsCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false];
  List _isSelected = [true, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/images/background_alt.jpeg',
    'assets/images/group_image.jpeg',
    'assets/images/background_alt.jpeg',
    'assets/images/group_image.jpeg',
  ];

  final List<String> places = ['ASIA', 'AFRICA', 'EUROPE', 'AMERIKATT'];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                // scrollPhysics: ResponsiveWidget.isSmallScreen(context)
                //     ? PageScrollPhysics()
                //     : NeverScrollableScrollPhysics(),
                aspectRatio: 3.0,
                viewportFraction: 0.6,
                enlargeCenterPage: true,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                    for (int i = 0; i < imageSliders.length; i++) {
                      if (i == index) {
                        _isSelected[i] = true;
                      } else {
                        _isSelected[i] = false;
                      }
                    }
                  });
                }),
            carouselController: _controller,
          ),
          AspectRatio(
            aspectRatio: 3.0,
            child: Center(
              child: Text(
                places[_current],
                style: TextStyle(
                  letterSpacing: 8,
                  fontFamily: 'Electrolize',
                  fontSize: screenSize.width / 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? Container()
              : AspectRatio(
                  aspectRatio: 3.0,
                  child: Center(
                    heightFactor: 3,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: screenSize.width / 5,
                          right: screenSize.width / 5,
                        ),
                        child: Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: screenSize.width / 20),
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: screenSize.height / 80,
                              bottom: screenSize.height / 80,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (int i = 0; i < places.length; i++)
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        onHover: (value) {
                                          setState(() {
                                            value
                                                ? _isHovering[i] = true
                                                : _isHovering[i] = false;
                                          });
                                        },
                                        onTap: () {
                                          _controller.animateToPage(i);
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: screenSize.height / 80,
                                              bottom: screenSize.height / 90),
                                          child: Text(
                                            places[i],
                                            style: TextStyle(
                                              color: _isHovering[i]
                                                  ? Colors.grey[400]
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        maintainSize: true,
                                        maintainAnimation: true,
                                        maintainState: true,
                                        visible: _isSelected[i],
                                        child: AnimatedOpacity(
                                          duration: Duration(milliseconds: 400),
                                          opacity: _isSelected[i] ? 1 : 0,
                                          child: Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                              color: Colors.blueGrey,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            width: screenSize.width / 20,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
