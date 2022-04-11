import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors: [Color(0xff5EE8C5), Color(0xff30BAD6)]));

    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontSize: 55, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Text(
            '11°',
            style: textStyle,
          ),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD9),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage('assets/scroll.png')));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Color(0xff0098FA), shape: StadiumBorder()),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text('Bienvenido',
                  style: TextStyle(color: Colors.white, fontSize: 30))),
        ),
      ),
    );
  }
}
