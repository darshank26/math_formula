import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:page_transition/page_transition.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../AdHelper/adshelper.dart';
import '../utils/ListItem.dart';
import '../utils/WishItem.dart';
import '../utils/constants.dart';
import 'Formulascreen.dart';

class Listscreen extends StatefulWidget {

  final int listIndex;
  final String title;

  const Listscreen({Key? key,required this.listIndex,required this.title}) : super(key: key);

  @override
  State<Listscreen> createState() => _ListscreenState(listIndex,title);


}

class _ListscreenState extends State<Listscreen> {



  Future<void>? _launched;

  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;


  final int listIndex;
  final String title;


  _ListscreenState(this.listIndex,this.title);

  final List<ListItem> items_1 = [
    ListItem(title: 'Factoring Formula'),
    ListItem(title: 'Product Formula'),
    ListItem(title: 'Roots Formula'),
    ListItem(title: 'Powers Formula'),
    ListItem(title: 'Logarithm Formula'),
    ListItem(title: 'Complex Formula'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Inequalities'),
    ListItem(title: 'Compound Interest Formula'),
    ListItem(title: 'Binomial Theorem'),

  ];

  final List<ListItem> items_2 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_3 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_4 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_5 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_6 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_7 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_8 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_9 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_10 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_11 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_12 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_13 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_14 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_15 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_16 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_17 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];

  final List<ListItem> items_18 = [
    ListItem(title: 'Algebra'),
    ListItem(title: 'Geometry'),
    ListItem(title: 'Trigonometry'),
    ListItem(title: 'Derivative'),
    ListItem(title: 'Analytical Geometry'),
    ListItem(title: 'Equations'),
    ListItem(title: 'Integrations'),
    ListItem(title: 'Laplace'),
    ListItem(title: 'Fourier'),
    ListItem(title: 'Matrices'),
    ListItem(title: 'Numerical Methods'),
    ListItem(title: 'Probability'),
    ListItem(title: 'Statistics'),
    ListItem(title: 'Unit Conversion'),
    ListItem(title: 'Vector Calculas'),
    ListItem(title: 'Beta Gamma'),
    ListItem(title: 'Z - Transform'),
    ListItem(title: 'Maths Tricks'),


  ];






  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdOfHomeScreen,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();

  }


  @override
  void dispose() {
    super.dispose();
    _bannerAd.dispose();
  }



  @override
  Widget build(BuildContext context) {

    if(widget.listIndex == 1) {
      return Scaffold(
        backgroundColor: kmainbackgroundcolor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
                Icons.arrow_back_ios_new_rounded, color: kmainbackgroundcolor),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: kappbarcolor,
          elevation: 10,
          title: Text(widget.title,
              style: GoogleFonts.nunito(
                  letterSpacing: 0.8,
                  fontSize: 24,
                  color: kmainbackgroundcolor,
                  fontWeight: FontWeight.w900)),
        ),
        body: ListView.builder(
          itemExtent: 100.0,
          itemCount: items_1.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: GestureDetector(
                onTap: () {

                  if( index == 0)
                    {
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.fade, child: Formulascreen(listIndex: index+1,title: items_1[index].title)));
                    }
                  else   if( index == 1)
                    {
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.fade, child: Formulascreen(listIndex: index+1,title: items_1[index].title)));

                    }
                  else   if( index == 2)
                  {
                    Navigator.push(context, PageTransition(
                        type: PageTransitionType.fade, child: Formulascreen(listIndex: index+1,title: items_1[index].title)));

                  }

                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                      color: klistcolor,
                      // Set your desired background color here
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            16.0), // Set your desired corner radius
                      ),
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 4.0,
                              bottom: 4.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(items_1[index].title,
                                style: GoogleFonts.nunito(textStyle: TextStyle(
                                  fontSize: 22,
                                  color: ktextcolor,
                                  letterSpacing: 0.8,
                                  fontWeight: FontWeight.w800,))

                            ),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded, size: 28,
                          color: ktextcolor,), // Your desired icon

                      )),
                ),
              ),


            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }else
    {
        return Container();
    }



  }


  Future<void> _open(String text) async {
    final Uri url = Uri.parse(text);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch');
    }
  }

  Widget _buildChipOne(String label, Color color) {
    return Chip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      labelPadding: EdgeInsets.all(2.0),
      label: Container(
        width: 45,
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
              ),

            ),

          ],
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(1.0),
    );
  }

  Widget _buildChipTwo(String label, Color color) {
    return Chip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      labelPadding: EdgeInsets.all(2.0),
      label: Container(
        width: 45,
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
              ),

            ),

          ],
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(1.0),
    );
  }

  Widget _buildChipThree(String label, Color color) {
    return Chip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      labelPadding: EdgeInsets.all(2.0),
      label: Container(
        width: 60,
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
              ),

            ),

          ],
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(1.0),
    );
  }




}
