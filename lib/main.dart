import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calcola costi viaggio',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const CalcolaCostiScreen(),
    );
  }
}

class CalcolaCostiScreen extends StatefulWidget {
  const CalcolaCostiScreen({super.key});

  @override
  State<CalcolaCostiScreen> createState() => _CalcolaCostiScreenState();
}

class _CalcolaCostiScreenState extends State<CalcolaCostiScreen> {
  final List<String> tipiPercorso = ['Urbano', 'Extraurbano', 'Misto'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Calcola costo del viaggio',
            style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 20, color: Colors.grey[800]),
            decoration: InputDecoration(
                hintText: 'Inserisci il numero di km',
                hintStyle: TextStyle(
                  fontSize: 18,
                )),
          ),
          const Spacer(),
          DropdownButton<String>(
            items: tipiPercorso.map((String value) {
              return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[800],
                      )));
            }).toList(),
            onChanged: (String? nuovoValore) {},
          ),
          const Spacer(flex: 2),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Calcola costo',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          const Spacer(
            flex: 2,
          ),
          Text(' ', style: TextStyle(fontSize: 24, color: Colors.grey[800])),
        ]),
      ),
    );
  }
}
