import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

import '../utils/constants.dart';

class Formulascreen extends StatefulWidget {


  final int listIndex;
  final String title;

  const Formulascreen({Key? key,required this.listIndex,required this.title}) : super(key: key);

  @override
  State<Formulascreen> createState() => _FormulascreenState(listIndex,title);

}

class _FormulascreenState extends State<Formulascreen> {

  final int listIndex;
  final String title;


  _FormulascreenState(this.listIndex,this.title);

  @override
  Widget build(BuildContext context) {

    if(widget.listIndex == 1) {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: kmainbackgroundcolor),
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
          body: Container(
              width: double.infinity,
              height: 500,
              child: PhotoView(
                minScale: 0.4,
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage(
                    "assets/algebra/factoring_formula.png"),
              )
          )
      );
    }
    else if (widget.listIndex == 2)
      {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: kmainbackgroundcolor),
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
            body: Container(
              width: double.infinity,
              height: 500,
              child: PhotoView(
                minScale: 0.2,
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage(
                    "assets/algebra/product_formula.png"),
              ),
            )
        );

      }
    else if (widget.listIndex == 3)
    {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: kmainbackgroundcolor),
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
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 1000,
              child: PhotoView(
                minScale: 0.9,
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage(
                    "assets/algebra/root_formula.png"),
              ),
            ),
          )
      );

    }
    else if (widget.listIndex == 4)
    {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: kmainbackgroundcolor),
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
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 600,
                child: PhotoView(
                  minScale: 0.5,
                  backgroundDecoration: BoxDecoration(color: Colors.white),
                  imageProvider: AssetImage(
                      "assets/algebra/power_formula.png"),
                )
            ),
          )
      );

    }
    else if (widget.listIndex == 5)
    {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: kmainbackgroundcolor),
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
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 600,
                child: PhotoView(
                  minScale: 0.5,
                  backgroundDecoration: BoxDecoration(color: Colors.white),
                  imageProvider: AssetImage(
                      "assets/algebra/log_formula.png"),
                )
            ),
          )
      );

    }
    else if (widget.listIndex == 6)
    {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: kmainbackgroundcolor),
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
          body: Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Container(
                width: double.infinity,
                height: 600,
                child: PhotoView(
                  minScale: 0.8,
                  backgroundDecoration: BoxDecoration(color: Colors.white),
                  imageProvider: AssetImage(
                      "assets/algebra/complex_formula.png"),
                )
            ),
          )
      );

    }
    else {
      return Container();
    }
  }
}
