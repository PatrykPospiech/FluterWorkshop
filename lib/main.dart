import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CalculatorHome()));
}

class CalculatorHome extends StatefulWidget {
  @override
  State<CalculatorHome> createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  int k =0;
  String rownanie = '';
  double wynik = 0;
  double current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FittedBox(
              fit: BoxFit.fill,
              child:Card(
                color: Colors.grey[600],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Text('$rownanie', style: TextStyle(fontSize: 50)),
                  ],
                ),
              )

            ),
            SizedBox(
              width: 500,
              height: 80,
              child: Card(
                  color: Colors.grey[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      Text('Wynik: $wynik', style: TextStyle(fontSize: 50)),
                    ],
                  )),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: () {
                          changeStatus(1);
                        },
                        child: Text('1',style: TextStyle(fontSize: 50))),
                  ),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          changeStatus(2);

                        },
                        child: Text('2', style: TextStyle(fontSize: 50)),
                      )),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            changeStatus(3);

                          },
                          child: Text('3', style: TextStyle(fontSize: 50)))),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {
                            summary('+');
                          },
                          child: Text('+', style: TextStyle(fontSize: 50)))),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: () {
                          changeStatus(4);

                        },
                        child: Text('4',style: TextStyle(fontSize: 50))),
                  ),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          changeStatus(5);

                        },
                        child: Text('5', style: TextStyle(fontSize: 50)),
                      )),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            changeStatus(6);

                          },
                          child: Text('6', style: TextStyle(fontSize: 50)))),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {
                            summary('-');
                          },
                          child: Text('-', style: TextStyle(fontSize: 50)))),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: () {
                          changeStatus(7);

                        },
                        child: Text('7',style: TextStyle(fontSize: 50))),
                  ),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          changeStatus(8);

                        },
                        child: Text('8', style: TextStyle(fontSize: 50)),
                      )),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            changeStatus(9);

                          },
                          child: Text('9', style: TextStyle(fontSize: 50)))),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {
                            summary('*');
                          },
                          child: Text('*', style: TextStyle(fontSize: 50)))),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text('.',style: TextStyle(fontSize: 50))),
                  ),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          changeStatus(0);

                        },
                        child: Text('0', style: TextStyle(fontSize: 50)),
                      )),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            summary('=');
                          },
                          child: Text('=', style: TextStyle(fontSize: 50)))),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {
                            summary('/');
                          },
                          child: Text('/', style: TextStyle(fontSize: 50)))),
                ])
          ],
        ),
      )
    );
  }


  void changeStatus(double provided){
    setState((){
      rownanie += '$provided';
      current = provided;
    });
  }


  void summary(String operationChar){
    setState((){
      rownanie += '$operationChar';

      switch(operationChar){
        case '+':
          wynik += current;
          break;
        case '-':
          wynik -= current;
          break;
        case '*':
          wynik *= current;
        break;
        case '/':
          if(current != 0){
            wynik /= current;
          }
          break;
        case '=':
rownanie = '';
          break;
          default:
      print('wrong operation');
      }

      wynik += current;
      current = 0;

    });
  }
}

void Dodawanie(int x){
  x++;
}


Container CalculatorKeyboard() {

  int k = 0;

  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('Wynik: $k'),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('1',style: TextStyle(fontSize: 50))),
              ),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('2', style: TextStyle(fontSize: 50)),
                  )),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('3', style: TextStyle(fontSize: 50)))),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('+', style: TextStyle(fontSize: 50)))),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('4',style: TextStyle(fontSize: 50))),
              ),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('5', style: TextStyle(fontSize: 50)),
                  )),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('6', style: TextStyle(fontSize: 50)))),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('-', style: TextStyle(fontSize: 50)))),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('7',style: TextStyle(fontSize: 50))),
              ),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('8', style: TextStyle(fontSize: 50)),
                  )),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('9', style: TextStyle(fontSize: 50)))),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('*', style: TextStyle(fontSize: 50)))),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('.',style: TextStyle(fontSize: 50))),
              ),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('0', style: TextStyle(fontSize: 50)),
                  )),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('=', style: TextStyle(fontSize: 50)))),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('/', style: TextStyle(fontSize: 50)))),
            ])
      ],
    ),
  );
}


// Container CalculatorKeyboard() {
//
//   final fontStyleGreen = TextStyle(backgroundColor: Colors.green, /*height: 10*/);
//   final fontStyleRed = TextStyle(backgroundColor: Colors.red, /*height: 10*/);
//
//   return Container(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       crossAxisAlignment: CrossAxisAlignment.end,
//
//       children: [
//         Row(
//           children: [
//             Text('TutajBedzie wynik')
//           ],
//         ),
//         Column(
//
//           children: [
//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children:[
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//
//                     color: Colors.red,
//                       child: Text('1', style: fontStyleGreen, textAlign: TextAlign.center,)),
//                 ),
//                 Expanded(
//                     flex: 1,
//                     child: Container(
//                         color: Colors.green,child: Text('2', style: fontStyleRed, textAlign: TextAlign.center,))),
//                 Expanded(
//                     flex:1,
//                     child: Container(
//                         color: Colors.red,child: Text('3', style: fontStyleGreen, textAlign: TextAlign.center,))),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                       color: Colors.green,child: ElevatedButton(onPressed: () {},
//                       style: ElevatedButton.styleFrom(primary: Colors.green, padding: EdgeInsets.all(30)),
//                       child: Text('4', style: fontStyleRed, textAlign: TextAlign.center,))),
//                 ),
//               ]
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children:[
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//
//                         color: Colors.green,
//                         child: Text('1', style: fontStyleRed, textAlign: TextAlign.center,)),
//                   ),
//                   Expanded(
//                       flex: 1,
//                       child: Container(
//                           color: Colors.red,child: Text('2', style: fontStyleGreen, textAlign: TextAlign.center,))),
//                   Expanded(
//                       flex:1,
//                       child: Container(
//                           color: Colors.green,child: Text('3', style: fontStyleRed, textAlign: TextAlign.center,))),
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                         color: Colors.red,child: Text('4', style: fontStyleGreen, textAlign: TextAlign.center,)),
//                   ),
//                 ]
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children:[
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//
//                         color: Colors.red,
//                         child: Text('1', style: fontStyleGreen, textAlign: TextAlign.center,)),
//                   ),
//                   Expanded(
//                       flex: 1,
//                       child: Container(
//                           color: Colors.green,child: Text('2', style: fontStyleRed, textAlign: TextAlign.center,))),
//                   Expanded(
//                       flex:1,
//                       child: Container(
//                           color: Colors.red,child: Text('3', style: fontStyleGreen, textAlign: TextAlign.center,))),
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                         color: Colors.green,child: Text('4', style: fontStyleRed, textAlign: TextAlign.center,)),
//                   ),
//                 ]
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children:[
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//
//                         color: Colors.green,
//                         child: Text('1', style: fontStyleRed, textAlign: TextAlign.center,)),
//                   ),
//                   Expanded(
//                       flex: 1,
//                       child: Container(
//                           color: Colors.red,child: Text('2', style: fontStyleGreen, textAlign: TextAlign.center,))),
//                   Expanded(
//                       flex:1,
//                       child: Container(
//                           color: Colors.green,child: Text('3', style: fontStyleRed, textAlign: TextAlign.center,))),
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                         color: Colors.red,child: Text('4', style: fontStyleGreen, textAlign: TextAlign.center,)),
//                   ),
//                 ]
//             ),
//           ],
//         )
//       ],
//     ),
//   );
// }

class Home extends StatelessWidget {
  //const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator'),
        backgroundColor: Colors.amber[600],
        centerTitle: true,
      ),
      body: ColumnTest(),
      floatingActionButton: FloatingActionButton(
          child: Text('==='),
          onPressed: () {},
          backgroundColor: Colors.amber[200]),
    );
  }
}

Column ColumnTest() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Row(
        children: [Text('text1'), Text('text2')],
      ),
      Expanded(
          flex: 1,
          child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.yellow,
              child: Text('testnext'))),
      Expanded(
        flex: 2,
        child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.green,
            child: Text('testnext')),
      ),
      Expanded(
        flex: 3,
        child: Container(
            padding: EdgeInsets.all(40),
            color: Colors.blue,
            child: Text('testnext')),
      )
    ],
  );
}

Row RowTest() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('testRow'),
      FlatButton(onPressed: () {}, child: Text('testrowclick')),
      Container(
          color: Colors.cyan, child: Text('3test'), padding: EdgeInsets.all(20))
    ],
  );
}

Padding Padding1() {
  return Padding(padding: EdgeInsets.all(20.0), child: Text('testpadding1'));
}

Container Container1() {
  return Container(
      child: Text('hello'),
      margin: EdgeInsets.all(20),
      color: Colors.grey[400]);
}

Center TextCenter() {
  return Center(
      child: Text(
    'Tutaj Bedzie kalkulator2',
    style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
        color: Colors.grey[800],
        fontFamily: 'CustomFont'),
  ));
}

Center IconButton() {
  return Center(
      child: RaisedButton(
          onPressed: () {
            print('clicked');
          },
          child: Text('me'),
          textColor: Colors.lightBlue));
}

Center IconWid() {
  return Center(
      child: Icon(
    Icons.airport_shuttle,
    color: Colors.lightBlue,
  ));
}

Center ImageCenter() {
  return Center(
      child: Image(
          image: NetworkImage(
              'https://i.pinimg.com/236x/33/a8/6f/33a86ff79de052cf0020d9e8eb77d125.jpg')));
}

Center ImageCenterFromAsset() {
  return Center(child: Image(image: AssetImage('assets/2.jpg')));
}

Center ImageCenterFromAsset2() {
  return Center(child: Image.asset('assets/2.jpg'));
}
