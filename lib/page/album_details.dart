import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_moblie/page/album_item.dart';
import 'package:google_fonts/google_fonts.dart';

class albumDetails extends StatefulWidget {
  static const routeName = '/details';

  const albumDetails({Key? key}) : super(key: key);

  @override
  _albumDetailsState createState() => _albumDetailsState();
}

class _albumDetailsState extends State<albumDetails> {
  @override
  Widget build(BuildContext context) {
    var albums = ModalRoute.of(context)!.settings.arguments as albumItem;
    return Scaffold(
      appBar: AppBar(
        title: Text('${albums.name}'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g.jpg'),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Album : ${albums.name}',
                              style: GoogleFonts.diplomataSc(
                                  fontSize: 30.0, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              'assets/images/${albums.image}',
                              width: 550,
                              height: 500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                                'List songs ${albums.music.length} tracks',
                                style: Theme.of(context).textTheme.headline2),
                          ),
                          for (var i = 0; i < albums.music.length; i++)
                            Text(
                              '${albums.music[i]}',
                              style: GoogleFonts.mali(
                                  fontSize: 25.0, color: Colors.white),
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
