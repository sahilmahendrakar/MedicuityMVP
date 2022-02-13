import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:medicuity_mvp/context_card.dart';
import 'package:medicuity_mvp/term.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Medicuity Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController inputController = TextEditingController();
  String inputText = "";

  TextStyle defaultStyle = TextStyle(fontSize: 20.0);

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Widget analyzedText = Container();
  Widget card = Container();

  Term testTerm = Term(
      name: "Test Name",
      conceptId: "C1",
      start: 0,
      end: 1,
      types: ["T01"],
      aliases: ["alias1", "alias 2", "alias 3"],
      definition: "Sample definition");

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 32, 64, 10),
              child: TextField(
                controller: inputController,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Enter text here',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  //http.get(Uri.parse('http://127.0.0.1:5000/context')).then((value) => print(value.body));
                  // http.post(Uri.parse('http://127.0.0.1:5000/context'),
                  //     headers: {
                  //       "Access-Control-Allow-Origin": "*",
                  //       "Content-Type": "application/json",
                  //       },
                  //     body: jsonEncode(<String, String>{
                  //       'text': inputController.text,
                  //     })).then((value) => print(value.body));
                  setState(() {
                    inputText = inputController.text;
                    analyzedText = Center(
                      child: getAnalyzedText(inputText),
                    );
                  });
                  print(inputText);
                },
                child: Text("Analyze")),
            analyzedText,
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
              child: card,
            ),
          ],
        ),
      ),
    );
  }

  FutureBuilder<Response> getAnalyzedText(String input) {
    return FutureBuilder<Response>(
      future: http.post(Uri.parse('http://127.0.0.1:5000/context'),
          headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
          },
          body: jsonEncode(<String, String>{
            'text': input,
          })), // a previously-obtained Future<String> or null
      builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
        List<Widget> children;
        if (snapshot.hasData) {
          List rawTerms = jsonDecode(snapshot.data!.body)['results'];
          print(rawTerms);
          List<Term> terms = (rawTerms.map((e) => Term.fromJson(e))).toList();
          terms.sort((a, b) => a.start.compareTo(b.start));
          print(terms[0].name);
          List<TextSpan> textChildren = [];
          List originalChars = input.split('');
          textChildren.add(TextSpan(
              text: originalChars.sublist(0, terms[0].start).join(),
              style: TextStyle(fontSize: 20.0)));
          for (int i = 0; i < terms.length; i++) {
            if (i > 0) {
              textChildren.add(TextSpan(
                  text: originalChars
                      .sublist(terms[i - 1].end, terms[i].start)
                      .join(),
                  style: TextStyle(fontSize: 20.0)));
            }
            textChildren.add(TextSpan(
                text:
                    originalChars.sublist(terms[i].start, terms[i].end).join(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      card = ContextCard(term: terms[i]);
                    });
                  }));
          }
          textChildren.add(TextSpan(
              text: originalChars.sublist(terms[terms.length - 1].end).join(),
              style: TextStyle(fontSize: 20.0)));
          children = <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(32.0, 10.0, 32.0, 10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: RichText(
                    text: TextSpan(
                      children: textChildren,
                    ),
                  ),
                ),
              ),
            )
          ];
        } else if (snapshot.hasError) {
          children = <Widget>[
            const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Error: ${snapshot.error}'),
            )
          ];
        } else {
          children = const <Widget>[
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Awaiting result...'),
            )
          ];
        }
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: children,
          ),
        );
      },
    );
  }
}



//TODO: Highlight text in text span
//Create Context card
//Show context card when word is clicked
