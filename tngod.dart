import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('23:40'),
          actions: [
            Container(
              margin: EdgeInsets.only(
                right: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.bluetooth,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.wifi,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.signal_cellular_alt,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.battery_full,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://png.pngtree.com/thumb_back/fw800/back_our/20200814/ourmid/pngtree-simple-background-of-multiple-color-gradient-app-interface-materials-png-image_392301.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 80),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 380,
                  height: 800,
                  margin: EdgeInsets.only(
                      bottom: 20
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Container(
                                margin: EdgeInsets.only(left: 16, right: 16),
                                child: Icon(
                                  Icons.account_box,
                                  size: 30,
                                ),
                              ),
                              labelText: 'ID',
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 350,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Container(
                                margin: EdgeInsets.only(left: 16, right: 16),
                                child: Icon(
                                  Icons.key,
                                  size: 30,
                                ),
                              ),
                              labelText: 'PW',
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 70),
                        Container(
                          width: 350,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Forgot your password?",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 260,
                                right: 250,
                              ),
                              height: 40,
                              width: 40,
                              color: Colors.pink,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 150,
                                left: 140,
                              ),
                              height: 40,
                              width: 40,
                              color: Colors.indigo,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 230,
                                left: 180,
                              ),
                              height: 40,
                              width: 40,
                              color: Colors.amber,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 240,
                                left: 250,
                              ),
                              height: 40,
                              width: 40,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 100,
                                right: 10,
                              ),
                              child: ElevatedButton(
                                  onPressed: () {
                                  },
                                  child: Text(
                                    'Facebook',
                                  ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 100,
                                left: 10,
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                },
                                child: Text(
                                  'Twitter',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo,
                                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}