import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi biodata',
      theme: ThemeData(

        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Biodata'),
          backgroundColor: Color.fromARGB(255, 95, 110, 5),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              // judul("Rifky Azis"),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 45, 196, 196),
                ),
                child: Text('Rifky Azis'),
              ),
              Image(
                  image: NetworkImage(
                    "https://media.gettyimages.com/id/515218548/photo/portrait-of-adolf-hitler-head-of-of-the-nazi-party-in-germany-head-and-shoulders-full-face.jpg?s=612x612&w=0&k=20&c=MQlFWZfcmoFelyscI4g4cM_51X4J40e--WK3e2tIuqU=" )

                    ),
              SizedBox(height: 20),
              Row(
                children: [
                  btnContact(Icons.email,Colors.green,"mailto:azisr839@gmail.com"),
                  btnContact(Icons.message,Colors.blue,"https://wa.me/0895383284287"),
                  btnContact(Icons.phone,Colors.red,"tel:+62895383284287"),
                  // Expanded(
                  //   child: ElevatedButton(
                  //     onPressed: (){}, 
                  //     style: ElevatedButton.styleFrom(
                  //       foregroundColor: Colors.white
                  //     ),
                  //     child: Icon(Icons.call)),
                  // ),
                  //  SizedBox(width: 20),
                  // Expanded(
                  //   child: ElevatedButton(
                  //     onPressed: (){}, 
                  //     style: ElevatedButton.styleFrom(
                  //       foregroundColor: Colors.white
                  //     ),
                  //     child: Icon(Icons.email)),
                  // ),
                  //  SizedBox(width: 20),
                  // Expanded(
                  //   child: ElevatedButton(
                  //     onPressed: (){}, 
                  //     style: ElevatedButton.styleFrom(
                  //       foregroundColor: Colors.white
                  //     ),
                  //     child: Icon(Icons.share)),
                  // )
                ],
              ),
              Row(
                children : [
                  Text(
                    "- Hoby",
                    style : TextStyle(fontWeight:FontWeight.bold,fontSize : 18),
                  ),
                  Text(
                    ":",
                    style : TextStyle(fontSize : 18)
                  ),
                  Text(
                    "Tidur dan Coding,design Kufi",
                    style : TextStyle(fontSize : 18)
                  ),

                ]
              ),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 45, 196, 196),
                ),
                child: Text('Deskripsi'),
              ),
              

          ]),
        )
          ),
    );
  }

  Expanded btnContact(IconData icon,Color color,String url){
    return Expanded(
      child :ElevatedButton(
        onPressed : () {
          launch(url);
        },
        style : ElevatedButton.styleFrom(
          backgroundColor : color,
          foregroundColor : Colors.white,
          textStyle : const TextStyle(
            fontWeight: FontWeight.bold,color : Colors.white
          )
        ),
        child : Icon(icon),
      ),
    );
  }

}


