import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilePage extends StatefulWidget {
  static const routeName = '/profile';

  const profilePage({Key? key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g.jpg'
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: Image.asset('assets/images/kimkai.jpg'),
                  )),
              SizedBox(height: 15.0),
              Text(
                'Phutchatcha Napalai',
                style: GoogleFonts.kanit(fontSize: 35.0,color: Colors.white),
              ),
              SizedBox(height: 5.0),
              Text(
                'Napalai_p@silpakorn.edu',
                style: GoogleFonts.kanit(fontSize: 21.0,color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
