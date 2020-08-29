import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color white = HexColor.fromHex('#FDFEFE');
  final Color black = HexColor.fromHex('#000000');
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        shadowColor: white,
        leading: IconButton(
          disabledColor: black,
          icon: const Icon(Icons.arrow_back),
        ),
        actions: <Widget>[
          IconButton(
            disabledColor: black,
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(
        padding: new EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FirstPart(),
            secondPart(),
            Expanded(
              child: Card(
                color: Colors.white54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(15.0, 30.0, 0, 0),
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: const Card(
                                    color: Colors.red,
                                    child: IconButton(
                                      color: Colors.white,
                                      disabledColor: Colors.white,
                                      icon: const Icon(Icons.favorite),
                                    )),
                              )),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15.0, 32.0, 0, 0),
                                child: Text('Popular',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10.0, 1.0, 0, 0),
                                child: Text('Mango'),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 30.0, 0, 0),
                            child: IconButton(
                              color: Colors.black,
                              disabledColor: Colors.black,
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                    ),
                    /*ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (ctx, int) {
                        return Card(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/cake.jpg',
                                  fit: BoxFit.cover,
                                )));
                      },
                    ),*/
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row FirstPart() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 8.0, 0, 0),
                child: Text(
                  'What do you want',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 8.0),
                child: Text(
                  'to eat today?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 50.0,
          height: 50.0,
          child: const Card(
            child: IconButton(
              color: Colors.black,
              disabledColor: Colors.black,
              icon: const Icon(Icons.search),
            ),
          ),
        ),
      ],
    );
  }

  SizedBox secondPart() => SizedBox(
        height: 200,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 6,
                          child: Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/images/cake.jpg',
                                    fit: BoxFit.cover,
                                  )))),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Text("      Cake - "),
                              Text("10 items",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                    ],
                  ),
                ));
          },
        ),
      );
  SizedBox thirdPart() => SizedBox(
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 6,
                          child: Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/images/cake.jpg',
                                    fit: BoxFit.cover,
                                  )))),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Text("      Cake - "),
                              Text("10 items",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                    ],
                  ),
                ));
          },
        ),
      );
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
