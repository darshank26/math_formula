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
            style: GoogleFonts.poppins(
                letterSpacing: 0.8,
                fontSize: 22,
                color: kmainbackgroundcolor,
                fontWeight: FontWeight.w900)),
      ),
      body: Container(
          child: PhotoView(
            backgroundDecoration: BoxDecoration(color: Colors.white),
            imageProvider: AssetImage("assets/algebra/factoring_formula.png"),
          )
      )
    );
  }
}