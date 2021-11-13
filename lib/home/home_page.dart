import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_moblie/page/albumPage.dart';
import 'package:project_moblie/page/member_page.dart';
import 'package:project_moblie/page/profile_page.dart';

class homePage extends StatefulWidget {
  static const routeName = '/home';

  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var _subPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _subPageIndex == 0 ? Text('') : Text('PROFILE'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black54,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        child: Image.asset('assets/images/kimkai.jpg'),
                      )),
                  Text(
                    'Phutchatcha Napalai',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  Text(
                    'Napalai_p@silpakorn.edu',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              title: _subPageIndex == 0
                  ? _buildDrawerItem(
                      Icon(Icons.account_balance_rounded,
                          color: Colors.purple.shade300),
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.purple.shade300),
                      ))
                  : _buildDrawerItem(
                      Icon(Icons.account_balance_rounded),
                      Text('Home'),
                    ),
              onTap: () => _showSubPage(0),
            ),
            ListTile(
              title: _subPageIndex == 1
                  ? _buildDrawerItem(
                      Icon(Icons.person, color: Colors.purple.shade300),
                      Text(
                        'Profile',
                        style: TextStyle(color: Colors.purple.shade300),
                      ))
                  : _buildDrawerItem(Icon(Icons.person), Text('Profile')),
              onTap: () => _showSubPage(1),
            ),
          ],
        ),
      ),
      body: Container(
        child: _buildSubPage(),
      ),
    );
  }
  _showSubPage(int index) {
    setState(() {
      _subPageIndex = index;
    });
    Navigator.of(context).pop();
  }
  _buildSubPage() {
    switch (_subPageIndex) {
      case 0: // home page
        return albumPage();
      case 1:
        return profilePage();
      case 2:
        return memberPage();
      default:
        return SizedBox.shrink();
    }
  }
  Row _buildDrawerItem(Widget icon, Widget title) {
    return Row(
      children: [icon, SizedBox(width: 8.0), title],
    );
  }
}
