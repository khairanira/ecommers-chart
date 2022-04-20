import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Demo',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // A widget which will be started on application startup
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

var titleList = [
  "Brand new shoes"
];

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text('Products', style: TextStyle(color: Colors.blueAccent, fontSize: 30, letterSpacing: 2)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 5,
        leading: Icon(Icons.shopping_bag, color: Colors.blueAccent, size: 27),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                        leading: Image.network(
                          "https://www.mensdesignershoe.com/avactis-images/6002-coco-pylos-durban-sneaker-blue-lifestyle-web-1.jpg",
                        ),
                        title: Text(
                          "Brand new shoe",
                          style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          "SH-231",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ))));
            FloatingActionButton _flotingButton() {
              return FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.shopping_basket, color: Theme.of(context).floatingActionButtonTheme.backgroundColor),
              );

              @override
              Widget build(BuildContext context) {
                return Scaffold(
                  floatingActionButton: _flotingButton(),
                  body: SafeArea(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Color(0xfffbfbfb),
                          Color(0xfff7f7f7),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                    ),
                  ),
                );
              }
            }
          }),
    );
  }
}
