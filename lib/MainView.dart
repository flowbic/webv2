import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webv2/home/screens/Dashboard.dart';

class MainView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              shadowColor: Colors.transparent,
              pinned: true,
              snap: false,
              floating: false,
              backgroundColor: Colors.black,
              expandedHeight: MediaQuery.of(context).size.height * 0.6,
              titleSpacing: 0.0,
              // leading: Container(
              //   child: Row(
              //     children: [
              //       Center(
              //         heightFactor: 1.7,
              //         child: SvgPicture.asset('assets/icons/flowbic.svg',
              //             semanticsLabel: 'Flowbic Logo'),
              //       ),
              //     ],
              //   ),
              // ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: EdgeInsets.all(10),
                background: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.dstATop),
                        image: AssetImage('assets/images/background_alt.jpeg'),
                        fit: BoxFit.cover),
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                title: Container(
                  child: Row(
                    children: [
                      Center(
                        heightFactor: 1.7,
                        child: SvgPicture.asset('assets/icons/flowbic.svg',
                            semanticsLabel: 'Flowbic Logo'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Container(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Vi superbra.\n",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    height: 1,
                                  ),
                                ),
                                TextSpan(
                                  text: "Du supernöjd!\n",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: Center(child: Dashboard()),
      ),
    );
  }
}
