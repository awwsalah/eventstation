import 'package:flutter/material.dart';
import 'package:eventstation/widgets/destination_carousel.dart';
import 'package:eventstation/widgets/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //int _selectedIndex = 0;
  int _currentTab = 0;
  //TabController _tabController;
  //List<TabBar> _icons = [
    // FontAwesomeIcons.home,
    // FontAwesomeIcons.star,
    // FontAwesomeIcons.,
    // FontAwesomeIcons.marker,
    // 'HOME',
    // 'Flower',
    // 'Decorations'
    // 'Faviorte'

    
  //];



  // Widget _buildIcon(int index) {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         _selectedIndex = index;
  //       });
  //     },
  //     child: Container(
  //       height: 60.0,
  //       width: 60.0,
  //       decoration: BoxDecoration(
  //         color: _selectedIndex == index
  //             ? Theme.of(context).accentColor
  //             : Color(0xFFE7EBEE),
  //         borderRadius: BorderRadius.circular(30.0),
  //       ),
  //       // child: Text(
  //       //   _icons[index],
  //       //   style: TextStyle(
  //       //     color: _selectedIndex == index
  //       //       ? Theme.of(context).primaryColor
  //       //       : Color(0xFFB4C1C4),
  //       //       fontSize: 25.0),
          
  //       // ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
         

       
            SizedBox(height: 20.0),
            DestinationCarousel(),
            SizedBox(height: 20.0),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value; 
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            title: SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
