import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(255, 207, 190, 1)
    ));
    return Scaffold(
        body:Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/image.jpg'), fit: BoxFit.cover)
            ),
            child:Scaffold(
              resizeToAvoidBottomInset: true,
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Wrap(
                          direction: Axis.horizontal,
                          children: <Widget>[const Padding(

                            padding: EdgeInsets.all(30.0),
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                            SizedBox(height: 400),
                            Padding(padding: EdgeInsets.only(left:30.0, right:30),
                                child: SizedBox(
                                    height: 50,
                                    child:TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white38,
                                          border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                          hintText: 'Email',
                                          hintStyle: TextStyle(fontSize:13, color: Colors.white)
                                      ),
                                    )
                                )),
                            Padding(padding: EdgeInsets.all(30.0),
                                child: SizedBox(
                                  height: 50,
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white38,
                                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        hintText: 'Password',
                                        hintStyle: TextStyle(fontSize:13, color: Colors.white)
                                    ),
                                  ),
                                )),
                            Padding(padding: const EdgeInsets.only(left:30.0, right: 30.0, top: 30.0, bottom: 10.0),
                                child: SizedBox(
                                    width: double.infinity,
                                    child:ElevatedButton(
                                      style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(254, 157, 124, 1)),shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      )))
                                      ,onPressed:(){}, child: const Padding(padding: EdgeInsets.all(12), child:const Text('Login', style: TextStyle(fontSize: 20),)),
                                    )
                                )),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  Text('Don\'t have a account? ', style: TextStyle(color: Colors.white),),
                                  Text('SignUp',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                                ]
                            )
                          ]
                      )
                    ],
                  ),
                ), // This trailing comma makes auto-formatting nicer for build methods.
              ),
            )
        ));
  }
}
