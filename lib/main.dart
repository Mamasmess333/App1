import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Animal Tabs'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Dog'),
                Tab(text: 'Cat'),
                Tab(text: 'Rabbit'),
                Tab(text: 'Bird'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // 🐶 Dog
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://i.imgur.com/SuD7ol7.png',
                      width: 200,
                    ),
                    SizedBox(height: 20),
                    Text('This is a dog', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),

              // 🐱 Cat
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://i.imgur.com/T0AFO8j.png',
                      width: 200,
                    ),
                    SizedBox(height: 20),
                    Text('This is a cat', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),

              // 🐰 Rabbit (placeholder)
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Rabbit image not available'),
                    Icon(Icons.pets, size: 100),
                  ],
                ),
              ),

              // 🐦 Bird (placeholder)
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bird image not available'),
                    Icon(Icons.pets, size: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}