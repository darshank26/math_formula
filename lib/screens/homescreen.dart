import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:math_formula/screens/listscreen.dart';
import 'package:math_formula/utils/ListItem.dart';
import 'package:page_transition/page_transition.dart';

import '../AdHelper/adshelper.dart';
import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<ListItem> items = [
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

  Future<void>? _launched;

  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;



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

    const String toLaunch = 'http://darshankomu.com/apps/Marathi%20Aarti%20Sangrah/privacypolicy.html';


    return Scaffold(
      backgroundColor: kmainbackgroundcolor,
      appBar: AppBar(
        backgroundColor: kappbarcolor,
        elevation: 10,
        title: Align(
          alignment: Alignment.center,
          child: Text("Math Formula",
              style: GoogleFonts.poppins(
                  letterSpacing: 0.8,
                  fontSize: 22,
                  color: kmainbackgroundcolor,
                  fontWeight: FontWeight.w900)),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemExtent: 100.0,
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Container(
              height: 100,
              width: double.infinity,
              child: Card(
                  color: klistcolor, // Set your desired background color here
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), // Set your desired corner radius
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(left:4.0,bottom: 4.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(items[index].title,
                          style: GoogleFonts.poppins(textStyle: TextStyle(
                          fontSize: 20,
                          color: ktextcolor,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w800,))

                        ),
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 28,color: ktextcolor,), // Your desired icon

                  )),
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
  }



}
