import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam/Model_class/Data_Model.dart';
import 'package:re_exam/scrrens/Home_scrren.dart';

class Add_scrren extends StatefulWidget {
  const Add_scrren({Key? key}) : super(key: key);

  @override
  State<Add_scrren> createState() => _Add_scrrenState();
}

class _Add_scrrenState extends State<Add_scrren> {

  TextEditingController txtname =TextEditingController();
  TextEditingController txtstd =TextEditingController();
  TextEditingController txtid =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              size: 30,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Add Data",
            style: GoogleFonts.anton(fontSize: 30, color: Colors.blue),
          ),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  EditList.add(DataModel(Name: txtname.text,std: txtstd.text,grid: txtid.text));
                });
                Navigator.pop(context);
              },
              child: Icon(
                Icons.done,
                size: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              //name
              TextFormField(
                controller: txtname,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                    ),
                    prefixIcon: Icon(Icons.person,size: 25,color: Colors.blue,),
                    label: Text("Name",style: TextStyle(fontSize: 18,color: Colors.black),)
                ),
              ),
              //stad
              SizedBox(height: 10),
              TextFormField(
                controller: txtstd,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                    ),
                    prefixIcon: Icon(Icons.pin,size: 25,color: Colors.blue,),
                    label: Text("Stander",style: TextStyle(fontSize: 18,color: Colors.black),)
                ),
              ),
              //gr
              SizedBox(height: 10),
              TextFormField(
                controller: txtid,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                    ),
                    prefixIcon: Icon(Icons.badge,size: 25,color: Colors.blue,),
                    label: Text("Gr-Id",style: TextStyle(fontSize: 18,color: Colors.black),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
