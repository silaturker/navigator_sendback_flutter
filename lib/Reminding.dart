import 'package:flutter/material.dart';


class reminderInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String index = "First of all, welcome to our online art exhibition! If you are wondering about the drawings of popular painters, you are at the right place. In this application, I will give some tips to help you. When you first enter the page, you can send us your own drawings by using the photo button at the top right and have your drawings published on our 'talents waiting to be discovered' page published on our site at the beginning of each month. In order to examine the drawings of the painters, you can see the names of the painters in the left menu on the first login page. When you press the 'understood' button below, you will be directed to the login page. Come on, what are you waiting for, start browsing through the pictures!";
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/1.jpg.jpg',
                fit: BoxFit.cover,
                width: 70,
                height: 70,

              ),
              Image.asset('assets/images/3.jpg.jpg',
                fit: BoxFit.cover,
                width: 70,
                height: 70,

              ),
              Image.asset('assets/images/2.jpg.jpg',
                fit: BoxFit.cover,
                width: 70,
                height: 70,

              ),
              Container(
                padding: EdgeInsets.all(10),
                child: const Text('Enjoy the Painting Exhibition!',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
              )
            ],
          ),
        ),

        body: Center(

          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.teal,


            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset("assets/images/2.jpg.jpg"),
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.bottomCenter,
                ),
                Container(
                  width: 300,
                  height: 200,
                  padding: const EdgeInsets.all(20),
                  child: new RichText(
                    maxLines: 25,
                    text: new TextSpan(
                      children: <TextSpan>[
                        new TextSpan(text: index,
                            style: new TextStyle(fontSize: 8,
                                letterSpacing: 1,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    color: Colors.deepOrange,
                  ),
                  child: Image.asset("assets/images/S&T.png"),
                  alignment: Alignment.bottomCenter,
                ),


                SizedBox(
                  width: 120,
                  child: ElevatedButton(

                    onPressed: () {
                      Navigator.pop(context, 'send back');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(

                        children: const [
                          Text("Understood!"),

                        ],
                      ),
                    ),

                  ),
                )

              ],
            ),
          ),
        ));
  }
}