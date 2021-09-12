import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
    )
  );
}

void Equal(){

}

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
      body:
      ImageCenterFromAsset(),
      floatingActionButton: FloatingActionButton(
          child: Text('==='),
          onPressed: Equal,
          backgroundColor: Colors.amber[200]
      ),
    );
  }
}


Center TextCenter(){
  return Center(
      child: Text('Tutaj Bedzie kalkulator2',
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[800],
            fontFamily: 'CustomFont'
        ),
      )
  );
}

Center ImageCenter(){
  return Center(
      child: Image( image: NetworkImage('https://i.pinimg.com/236x/33/a8/6f/33a86ff79de052cf0020d9e8eb77d125.jpg'))
  );
}

Center ImageCenterFromAsset(){
  return Center(
      child: Image( image: AssetImage('assets/2.jpg'))
  );
}

Center ImageCenterFromAsset2(){
  return Center(
      child: Image.asset('assets/2.jpg'))
  );
}