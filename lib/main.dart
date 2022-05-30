import 'package:flutter/material.dart';
import 'Slider.dart';
import 'TitleGrid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavbar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Good Morning, John!',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.update,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Sliders(),
          TitleGrid(),
          Card(
            child: ListTile(
              title: Text(
                'Market bills',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('December 28, 2021'),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  shape: BoxShape.rectangle,
                  color: Colors.deepPurple[50],
                ),
                child: Icon(Icons.shop_two_sharp, color: Colors.deepPurple),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  'Pay',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Supermarket bills',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('December 28, 2021'),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  shape: BoxShape.rectangle,
                  color: Colors.deepPurple[50],
                ),
                child: Icon(Icons.shopping_cart, color: Colors.deepPurple),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  'Pay',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Store bills',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('December 28, 2021'),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  shape: BoxShape.rectangle,
                  color: Colors.deepPurple[50],
                ),
                child: Icon(Icons.storefront, color: Colors.deepPurple),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  'Pay',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Wifi bills',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('December 28, 2021'),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  shape: BoxShape.rectangle,
                  color: Colors.deepPurple[50],
                ),
                child: Icon(
                  Icons.wifi,
                  color: Colors.deepPurple,
                ),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  'Pay',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Supermarket bills',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('December 28, 2021'),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  shape: BoxShape.rectangle,
                  color: Colors.deepPurple[50],
                ),
                child: Icon(Icons.shopping_cart, color: Colors.deepPurple),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  'Pay',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavbar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
        ],
      ),
    );
  }
}
