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

  TextEditingController txtname=TextEditingController();
  TextEditingController txtstd=TextEditingController();
  TextEditingController txtid=TextEditingController();

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
            return View(EditList[index], index);
          },
          itemCount: EditList.length,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'add').then(
              (value) {
                setState(() {});
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget View(DataModel d1, index) {
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
            InkWell(
              onTap: () {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //text
                        Text("UpDate",style: GoogleFonts.anton(fontSize: 25,color: Colors.blue),),
                        //name
                        SizedBox(height: 20,),
                        TextFormField(

                            controller: txtname=TextEditingController(text: "${EditList[index].Name}"),

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
                          controller: txtstd=TextEditingController(text: "${EditList[index].std}"),
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
                          controller: txtid=TextEditingController(text: "${EditList[index].grid}"),
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
                        SizedBox(height: 20),
                        ElevatedButton(onPressed: () {
                          setState(() {
                            EditList[index].Name=txtname.text;
                            EditList[index].std=txtstd.text;
                            EditList[index].grid=txtid.text;
                          });
                          Navigator.pop(context);
                        }, child: Text("Update",style: TextStyle(fontSize: 18),))
                      ],
                    ),
                  );
                },);
              },
              child: Icon(
                Icons.edit,
                size: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        "Dilet Successfully",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.black26,
                    ));
                    EditList.removeAt(index);
                  });
                },
                child: Icon(Icons.delete, size: 30, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
