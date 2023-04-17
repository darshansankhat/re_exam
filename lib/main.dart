import 'package:flutter/material.dart';
import 'package:re_exam/scrrens/Add_scrren.dart';
import 'package:re_exam/scrrens/Home_scrren.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => Home_scrren(),
        "add":(context) => Add_scrren(),
      },
    )
  );
}