import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Öğrenci Takip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Öğrenci Takip'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // Image.asset(
            //   "images/book.jpg",
            //   width: 300,
            //   height: 400,
            // ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("images/book.jpg",),
                )
            ),
            Column(
                mainAxisAlignment : MainAxisAlignment.center,
                crossAxisAlignment : CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sınıf Ekle",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 10.0
                  ),
                  Text(
                    "Öğrenci Ekle",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ]
            ),
            // Container(
            //   width: 100.0,
            //   height: 100.0,
            //   decoration: Decoration(
            //
            //   )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: yeniListe,
        tooltip: 'Yeni Liste',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void yeniListe() {

  }
}
