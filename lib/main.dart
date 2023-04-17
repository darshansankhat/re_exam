import 'package:flutter/material.dart';
import 'package:re_exam/scrrens/Home_scrren.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => Home_scrren(),
      },
    )
  );
}