import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Add_scrren extends StatefulWidget {
  const Add_scrren({Key? key}) : super(key: key);

  @override
  State<Add_scrren> createState() => _Add_scrrenState();
}

class _Add_scrrenState extends State<Add_scrren> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Text("Add Data",style: GoogleFonts.anton(fontSize: 30,color: Colors.blue),),
          centerTitle: true,
        ),
      ),
    );
  }
}
