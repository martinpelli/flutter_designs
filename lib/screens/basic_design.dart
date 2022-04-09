import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                'Deserunt amet irure quis amet pariatur qui eu. Cupidatat sit id commodo qui esse dolore laborum. Qui ex sit nisi occaecat eiusmod tempor officia excepteur eiusmod. Duis ipsum veniam nisi officia enim ipsum magna Lorem cillum minim dolor tempor. Nostrud consectetur cillum do eu voluptate aute. Consequat anim aliquip commodo sunt dolor. Velit cillum nisi laborum quis adipisicing sunt consectetur minim occaecat sit ut non.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, iconTitle: 'Call'),
          CustomButton(icon: Icons.location_on, iconTitle: 'Route'),
          CustomButton(icon: Icons.share, iconTitle: 'Share')
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String iconTitle;

  const CustomButton({super.key, required this.icon, required this.iconTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          iconTitle,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
