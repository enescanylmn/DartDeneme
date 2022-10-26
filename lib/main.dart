import 'package:flutter/material.dart';

import 'enesinsayfasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  final _inputControllerim = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 5;
    });
    showDialog(
        context: context,
        builder: (BuildContext context) =>
            AlertDialog(title: Text('O!, $_counter kere tıkladın')));
  }

  void _textDegisti() {
    String textimiz = _inputControllerim.text;
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text('yazdığın yazı = $textimiz'),
            ));
  }

  void farkliFonksiyon () {
    const String textimiz = 'asdads';
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const EnesinSayfasi(veri: textimiz,)),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

        actions: <Widget>[
          IconButton(
              onPressed: _incrementCounter,
              icon: const Icon(Icons.accessibility)),
          IconButton(
              onPressed: () => {
                  },
              icon: const Icon(Icons.add_a_photo))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times orospu enes:',
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Buraya yazı gir',
              ),
              controller: _inputControllerim,
              onEditingComplete: _textDegisti,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
