import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam/Model_class/Data_Model.dart';

List<DataModel> EditList = [
  DataModel(Name: "Name", grid: "grid", std: "stander"),
];

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("My R & W",
              style: GoogleFonts.anton(fontSize: 30, color: Colors.blue)),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemBuilder: (context, index) {
            return View(EditList[index]);
          },
          itemCount: EditList.length,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'add').then((value) {
              setState(() {

              });
            },);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget View(DataModel d1) {
    return Container(
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 5),
        ],
      ),
      child: ListTile(
        leading: Text(
          "${d1.grid}",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        title: Text(
          "${d1.Name}",
          style: TextStyle(fontSize: 25, color: Colors.blue),
        ),
        subtitle: Text(
          "${d1.std}",
          style: TextStyle(fontSize: 18),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.edit,size: 30,color: Colors.black,),
            SizedBox(width: 10,),
            InkWell(onTap: () {
              EditList
            },child: Icon(Icons.delete,size: 30,color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
