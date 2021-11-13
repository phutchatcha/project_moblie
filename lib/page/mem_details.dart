import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_moblie/page/mem_item.dart';
import 'package:google_fonts/google_fonts.dart';

class memDetails extends StatefulWidget {
  static const routeName = '/memdetails';
  const memDetails({Key? key}) : super(key: key);

  @override
  _memDetailsState createState() => _memDetailsState();
}

class _memDetailsState extends State<memDetails> {
  @override
  Widget build(BuildContext context) {
    var members = ModalRoute.of(context)!.settings.arguments as memItem;
    return Scaffold(
      appBar: AppBar(
        title: Text('${members.name}',
          style: GoogleFonts.mali(fontSize: 22.0,color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
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
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${members.name}',
                                style: GoogleFonts.mali(fontSize: 35.0,
                                    color: Colors.white),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/${members.image}',
                              width: 700,
                              height: 900,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('History',
                                style: GoogleFonts.diplomataSc(fontSize: 35.0,color: Colors.white),),
                          ),
                          Padding(padding: const EdgeInsets.all(8.0)),
                          for (var i = 0; i < members.history.length; i++)
                            Text('${members.history[i]}',
                              style: GoogleFonts.mali(fontSize: 25.0,color: Colors.white),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
