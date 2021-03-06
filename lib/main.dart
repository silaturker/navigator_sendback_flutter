import 'package:flutter/material.dart';
import 'package:flutter_ex_2/Reminding.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatelessWidget(),

      debugShowCheckedModeBanner: false,
    );
  }

}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String index ="S&T Picture Land is an app that people who love to view pictures and enjoy going to painting exhibitions will love.";
    return Scaffold(
      appBar: AppBar(

        //title: const Text('Enjoy the Painting Exhibition!',style: TextStyle(fontWeight: FontWeight.bold),),

        backgroundColor:  Colors.deepOrange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start ,
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
              child:  const Text("Enjoy the Painting Exhibition!",
                style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
            )


          ],
        ),

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_a_photo),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_circle_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text('Painters',style: TextStyle(color: Colors.black,fontSize: 70, fontWeight: FontWeight.bold),),

            ),
            ListTile(
              title: const Text('VINCENT VAN GOGH',style: TextStyle(color: Colors.teal,fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('LEONARDO DA VINCI',style: TextStyle(color: Colors.teal,fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('MICHELANGELO',style: TextStyle(color: Colors.teal,fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('PABLO PICASSO',style: TextStyle(color: Colors.teal,fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('OSMAN HAMD?? BEY ',style: TextStyle(color: Colors.teal,fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('TURGUT ZA??M',style: TextStyle(color: Colors.teal,fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('EL??F NAC??',style: TextStyle(color: Colors.teal,fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('SALVADOR DAL??',style: TextStyle(color: Colors.teal,fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),ListTile(
              title: const Text('RAFFAELLO',style: TextStyle(color: Colors.teal,fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body: Center(

        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.teal,


        child:Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/bonus.gif"),
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
            ),
            Container(
              width: 300,
              height: 200,
              padding: const EdgeInsets.all(20),
              child: new RichText(
                maxLines: 5,
                text: new TextSpan(
                  children: <TextSpan>[
                    new TextSpan(text: index,
                        style: new TextStyle(fontSize: 20,letterSpacing: 1,color: Colors.black)),
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
                  _navigateAndDisplaySelection(context);
                } ,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(

                    children: const [
                      Text('OK Lets See!'),

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
  void _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  reminderInfo()),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result'),backgroundColor: Colors.orange,));
  }

}