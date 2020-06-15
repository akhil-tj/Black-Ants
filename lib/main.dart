import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/home.dart';

class Destination {
  const Destination(this.index, this.title, this.icon);
  final int index;
  final String title;
  final IconData icon;
}

const List<Destination> allDestinations = <Destination>[
  Destination(0, 'Home', Icons.home),
  Destination(1, 'Chat', Icons.chat),
  Destination(2, 'Alert', Icons.notifications),
  Destination(3, 'Your Biz', Icons.business_center)
];

class RootPage extends StatelessWidget {
  const RootPage({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination.title),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.black,
      body: SizedBox.expand(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/list");
          },
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin<HomePage> {
  List<Key> _destinationKeys;
  List<AnimationController> _faders;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          // action button
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Akhil T J"),
                accountEmail: Text("flutterapp@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: Text("Item 1"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text("Item 2"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text("Item 3"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text("Item 4"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text("Item 5"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Home(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
              icon: Icon(destination.icon),
              backgroundColor: Colors.blue,
              title: Text(destination.title));
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: HomePage()));
}
