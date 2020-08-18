import 'package:flutter/material.dart';

void main() => runApp(ScrollingHeaderExample());

class ScrollingHeaderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanding & Collapsing Header',
      home: MainScreen(),
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MainScreen extends StatelessWidget {
  final data = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Collapsing Header',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              background: Image.network(
                "https://cdn.pixabay.com/photo/2019/12/14/07/21/mountain-4694346_960_720.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  height: 100,
                  //color: Color(0xFF0D47A1)
                  //color: Color.fromRGBO(13, 72, 161, 1.0),
                  //color: Color(0xFF42A5F5)
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  child: Text('Child ${data[index]}'),
                );
              },
              childCount: data.length,
            ),
          ),
        ],
      ),
    );
  }
}
