import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Contador de Pessoas', home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pessoas = 0;

  void _addNumero(int delta){
    setState(() {
      _pessoas += delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Stack(
      children: <Widget>[
        Image.asset(
          'images/restaurant.jpg',
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pessoas: $_pessoas',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text('-1',
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                    onPressed: () {
                      _addNumero(-2);
                    },
                  ), 
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text('+1',
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                    onPressed: () {
                      _addNumero(1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _pessoas >= 10 ? 'Está cheio!' : 'Pode entrar!',
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontSize: 30),
            )
          ],
        ),
      ],
    );
  }
}
