import 'package:flutter/material.dart';
import 'package:project_moblie/page/albumlist_page.dart';
import 'package:project_moblie/page/member_page.dart';
class albumPage extends StatefulWidget {
  const albumPage({Key? key}) : super(key: key);

  @override
  _albumPageState createState() => _albumPageState();
}

class _albumPageState extends State<albumPage> {
  int _selectedBottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: _selectedBottomNavIndex == 0
              ? albumListPage() : memberPage()),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps_rounded,
              color: Colors.white30,
            ),
            label: 'Album',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.contacts_rounded,
                color: Colors.white30,
              ),
              label: 'Member',

          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        fixedColor: Colors.green.shade400,
        //สีปุ่มที่เลือก
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
    );
  }
  }

