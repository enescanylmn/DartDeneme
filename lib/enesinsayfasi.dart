import 'package:flutter/material.dart';

class EnesinSayfasi extends StatefulWidget {
  final String veri;
  const EnesinSayfasi({Key? key, required this.veri}) : super(key: key);
  @override
  State<EnesinSayfasi> createState() => _EnesinSayfasiState();
}

class _EnesinSayfasiState extends State<EnesinSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: Icon(Icons.backspace))
        ],
      ),
      body: Center(
        child: Text(widget.veri),
      ),
    );
  }
}
