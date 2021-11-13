import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_moblie/page/album_details.dart';
import 'package:project_moblie/page/album_item.dart';
import 'package:google_fonts/google_fonts.dart';

class albumListPage extends StatefulWidget {
  const albumListPage({Key? key}) : super(key: key);

  @override
  _albumListPageState createState() => _albumListPageState();
}

class _albumListPageState extends State<albumListPage> {
  var items = [
    albumItem(
      id: 1,
      name: 'MAMA(2012)',
      image: 'mama.jpg',
      music : [
        ('MAMA (마마)'),
        ('What Is Love'),
        ('History'),
        ('Into Your World (Angel) (너의 세상으로)'),
        ('Two Moons (두 개의 달이 뜨는 밤)'),
        ('Machine'),
      ],
    ),
    albumItem(
      id: 2,
      name: 'XOXO(2013)',
      image: 'xoxo.jpg',
        music : [
          ('늑대와 미녀 (Wolf)'),
          ("Baby Don't Cry (인어의 눈물)"),
          ('Black Pearl'),
          ("나비소녀 (Don't Go)"),
          ('Let Out the Beast'),
          ('3.6.5'),
          ('Heart Attack'),
          ('피터팬 (Peter Pan)'),
          ('Baby'),
          ('My Lady'),
        ]
    ),
    albumItem(
      id: 3,
      name: 'Miracles in December(2013)',
      image: 'miracles.jpg',
        music : [
          ('12월의 기적 (Miracles in December)'),
          ('Christmas Day'),
          ('The Star'),
          ('My Turn to Cry'),
          ('첫 눈 (The First Snow)'),
        ]
    ),
    albumItem(
      id: 4,
      name: 'Overdose(2014)',
      image: 'overdose.jpg',
        music : [
          ('Overdose (중독)'),
          ('Moonlight (월광)'),
          ('Thunder'),
          ('Run'),
          ('Love, Love, Love'),
        ]
    ),
    albumItem(
      id: 5,
      name: 'EXODUS(2015)',
      image: 'EXODUS.jpg',
        music : [
          ('Call Me Baby'),
          ('Transformer'),
          ('시선 둘, 시선 하나 (What If…) '),
          ('My Answer'),
          ('Exodus'),
          ('El Dorado'),
          ('Playboy'),
          ('Hurt'),
          ('"유성우 (Lady Luck) '),
          ('Beautiful'),
        ]
    ),
    albumItem(
      id: 6,
      name: 'Sing For You(2015)',
      image: 'SingForYou.jpg',
        music : [
          ('Unfair'),
          ('Sing for You'),
          ('Girl x Friend'),
          ('On the Snow (발자국)'),
          ('Lightsaber'),
        ]
    ),
    albumItem(
      id: 7,
      name: 'LOVE ME RIGHT(2015)',
      image: 'LOVE ME RIGHT.jpg',
        music : [
          ('LOVE ME RIGHT'),
          ('TENDER LOVE'),
          ('CALL ME BABY'),
          ('TRANSFORMER'),
          ('What If..'),
          ('MY ANSWER'),
          ('EXODUS'),
          ('EL DORADO'),
          ('PLAYBOY'),
          ('FIRST LOVE'),
          ('HURT'),
          ('Lady Luck'),
          ('BEAUTIFUL'),
        ]
    ),
    albumItem(
      id: 8,
      name: 'LOTTO(2016)',
      image: 'LOTTO.jpg',
        music : [
          ('Lotto '),
          ('Lucky One'),
          ('Monster'),
          ('Artificial Love'),
          ("Can't Bring Me Down"),
          ('Cloud 9'),
          ('Heaven'),
          ("She's Dreaming"),
          ('White Noise'),
          ('One and Only'),
          ('They Never Know'),
          ('Stronger'),
          ('Monster (LDN Noise Creeper Bass Remix)'),
        ]
    ),
    albumItem(
      id: 9,
      name: 'THE WAR(2017)',
      image: 'THE WAR.jpg',
        music : [
          ('The Eve'),
          ('Ko Ko Bop'),
          ('What U Do?'),
          ('Forever'),
          ('다이아몬드 (Diamond)'),
          ('너의 손짓 (Touch It)'),
          ('소름 (Chill)'),
          ('기억을 걷는 밤 (Walk on Memories)'),
          ('내가 미쳐 (Going Crazy)'),
        ],
    ),
    albumItem(
      id: 10,
      name: "DON'T MESS UP MY TEMPO(2018)",
      image: 'TEMPO.jpg',
        music : [
          ('Tempo'),
          ('Sign'),
          ('돵은 순간 (Ohh La La La)'),
          ('Gravity'),
          ('가끔 (With You)'),
          ('24/7'),
          ('후폭풍 (Bad Dream)'),
          ('Damage'),
          ('여기 있을게 (Smile On My Face)'),
          ('오아시스 (Oasis)'),
        ]
    ),
    albumItem(
      id: 11,
      name: 'LOVE SHOT(2018)',
      image: 'LOVE SHOT.jpg',
        music : [
          ('Love Shot'),
          ('Tempo'),
          ('Trauma'),
          ('Wait'),
          ('Sign'),
          ('Ooh La La La'),
          ('Gravity'),
          ('With You'),
          ('24/7'),
          ('Bad Dream'),
          ('Damage'),
          ('Smile On My Face'),
          ('Oasis'),
        ]
    ),
    albumItem(
      id: 12,
      name: 'OBSESSION(2019)',
      image: 'OBSESSION.jpg',
        music : [
          ('Obsession'),
          ('Trouble'),
          ('지킬 (Jekyll)'),
          ('춤 (Groove)'),
          ('Ya Ya Ya'),
          ('Baby You Are'),
          ('Non Stop'),
          ('오늘도 (Day After Day)'),
          ('나비효과 (Butterfly Effect)'),
        ]
    ),
    albumItem(
      id: 13,
      name: "DON'T FIGHT THE FEELING(2021)",
      image: "DON'T FIGHT.jpg",
        music : [
          ("Don't Fight The Feeling"),
          ('파라다이스 (Paradise)'),
          ('훅! (No Matter)'),
          ('Runaway'),
          ('지켜줄게 (Just As Usual)'),
        ]
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/g.jpg'
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          var item = items[index];

          return Card(
            margin: const EdgeInsets.all(8.0),
            color: Colors.white30,
            child: InkWell(
              onTap: () {
                print(item); //item.toString()
                Navigator.pushNamed(
                  context,
                  albumDetails.routeName,
                  arguments: item,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${item.image}',
                      width: 90.0,
                      height: 90.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${item.name}',
                          style: GoogleFonts.mali(fontSize: 22.0,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}




