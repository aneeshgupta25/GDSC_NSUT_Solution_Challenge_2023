import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.S
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image.svg'), fit: BoxFit.fill)
      ),
      child:Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Wrap(
                  direction: Axis.horizontal,
                  spacing: 10.0,
                  children: <Widget>[const Padding(

                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                    SizedBox(height: 400),
                     Padding(padding: EdgeInsets.only(left:30.0, right:30),
                        child: SizedBox(
                          height: 55,
                          child:TextField(
                            style: TextStyle(fontSize: 12),
                            decoration: InputDecoration(
                                border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Email'
                            ),
                        )
                        )),
                     Padding(padding: EdgeInsets.all(30.0),
                        child: SizedBox(
                          height: 55,
                          child: TextField(
                            style: TextStyle(fontSize: 12),
                            decoration: InputDecoration(
                                border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Password'
                            ),
                          ),
                        )),
                    Padding(padding: const EdgeInsets.all(30.0),
                        child: SizedBox(
                            width: double.infinity,
                            child:ElevatedButton(
                              style:ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )))
                              ,onPressed:(){}, child: const Padding(padding: EdgeInsets.all(10), child:const Text('Login', style: TextStyle(fontSize: 20),)),
                            )
                        )),]

              )
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
