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
        backgroundColor: const Color.fromRGBO(8, 219, 208, 0.86),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 500.0,
            //color: Colors.transparent,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/book.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: null /* add child content here */
          ),
          Column(
              mainAxisAlignment : MainAxisAlignment.center,
              crossAxisAlignment : CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                    children: [
                      const Icon(Icons.add),
                      const SizedBox(width: 10.0),
                      TextButton(
                        child: Text(
                        "Sınıf Ekle",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                          onPressed: sinifEkle(),
                      ),
                    ],
                ),
                const SizedBox(
                    height: 10.0
                ),
                Row(
                    children: [
                      const Icon(Icons.add),
                      const SizedBox(width: 10.0),
                      Text(
                        "Öğrenci Ekle",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ]
                ),
              ]
          ),

          // const Padding(
          //     padding: EdgeInsets.only(top:20.0,left:20.0),
          //     child: CircleAvatar(
          //       radius: 100,
          //       backgroundImage: AssetImage("images/book.jpg",),
          //     )
          // ),

          // Container(
          //   width: 100.0,
          //   height: 100.0,
          //   decoration: Decoration(
          //
          //   )

        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: yeniListe,
      //   tooltip: 'Yeni Liste',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void yeniListe() {

  }

  sinifEkle() {

  }
}
