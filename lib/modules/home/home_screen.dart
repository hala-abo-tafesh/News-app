import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //main axis alignment ; defult is start
    //cross axis alignment ; center
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: const Text("First App"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: onNotification,
          ),
          IconButton(
            icon: Text('hello'),
            onPressed: () {
              print('hello');
            },
          ),
        ],
      ),
      body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter ,
            colors: [
              Colors.pink.withOpacity(.6),
              Colors.pink.withOpacity(.5),
              Colors.pink.withOpacity(.4),
              Colors.pink.withOpacity(.3),
              Colors.pink.withOpacity(.2),
              Colors.pink.withOpacity(.1),
              // Colors.pinkAccent,
              Colors.white
            ],
          )
        ),
        child: SingleChildScrollView(
          // scrollDirection: Axis.vertical ,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'First',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Second',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Third',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'forth',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'First',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Second',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Third',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'forth',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'First',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Second',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Third',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'forth',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'First',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Second',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Third',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'forth',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'First',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Second',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Third',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'forth',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'First',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Second',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Third',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'forth',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),

            ],
          ),
        ),
      ) ,
    );
  }


  //
  void onNotification() {
    print('notification clicked');
  }
}
