import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_moblie/page/mem_details.dart';
import 'package:project_moblie/page/mem_item.dart';
import 'package:google_fonts/google_fonts.dart';

class memberPage extends StatefulWidget {

  const memberPage({Key? key}) : super(key: key);

  @override
  _memberPageState createState() => _memberPageState();
}

class _memberPageState extends State<memberPage> {
  var memList = [
    memItem(
      id: 1,
      name: 'ซูโฮ (Suho)',
      imagecut: 'suhocut.jpg',
      image: 'suho.png',
      history : [
        ('ชื่อจริง : คิม จุน มยอน (Kim Jun Myun)'),
        ('วันเกิด : 22 พฤษภาคม 1991'),
        ('ตำแหน่ง : หัวหน้าวง EXO-K, นักร้องนำ'),
        ('กรุ๊ปเลือด : AB'),
        ('ส่วนสูง : 173 cm'),
        ('น้ำหนัก : 65 kg'),
      ],
    ),
    memItem(
      id: 2,
      name: 'แบคฮยอน (Baekhyun)',
      imagecut: 'bycut.jpg',
      image: 'by.jpg',
      history : [
        ('ชื่อจริง : บยอน แบคฮยอน (Byun Baek Hyun)'),
        ('วันเกิด : 6 พฤษภาคม 1992'),
        ('ตำแหน่ง : นักร้องเสียงหลัก'),
        ('กรุ๊ปเลือด : O'),
        ('ส่วนสูง : 174 cm'),
        ('น้ำหนัก : 58 kg'),
      ],
    ),
    memItem(
      id: 3,
      name: 'ไค (Kai)',
      imagecut: 'kaicut.jpg',
      image: 'kai.jpg',
      history : [
        ('ชื่อจริง : คิม จงอิน ( Kim Jong In)'),
        ('วันเกิด : 14 มกราคม 1994 '),
        ('ตำแหน่ง : นักเต้นหลัก/ร้อง'),
        ('กรุ๊ปเลือด : A'),
        ('ส่วนสูง : 182 cm'),
        ('น้ำหนัก : 65 kg'),
      ],
    ),
    memItem(
      id: 4,
      name: 'ชานยอล (Chanyeol)',
      imagecut: 'cycut.jpg',
      image: 'cy.jpg',
      history : [
        ('ชื่อจริง : ปาร์ค ชานยอล (Park Chan Yeol)'),
        ('วันเกิด : 27 พฤศจิกายน 1992'),
        ('ตำแหน่ง : นักร้องเสริม, แร็ปเปอร์'),
        ('กรุ๊ปเลือด : A'),
        ('ส่วนสูง : 185 cm'),
        ('น้ำหนัก : 70 kg'),
      ],
    ),
    memItem(
      id: 5,
      name: 'ดีโอ (D.O.)',
      imagecut: 'docut.jpg',
      image: 'do.jpg',
      history : [
        ('ชื่อจริง : โด คยองซู (Do Kyung Soo)'),
        ('วันเกิด : 12 มกราคม 1993'),
        ('ตำแหน่ง : นักร้องหลัก'),
        ('กรุ๊ปเลือด : A'),
        ('ส่วนสูง : 173 cm'),
        ('น้ำหนัก : 60 kg'),
      ],
    ),
    memItem(
      id: 6,
      name: 'เซฮุน (Sehun)',
      imagecut: 'shcut.jpg',
      image: 'sh.jpg',
      history : [
        ('ชื่อจริง : โอ เซฮุน (Oh Se Hun)'),
        ('วันเกิด : 12 เมษายน 1994 '),
        ('ตำแหน่ง : นักร้อง, นักเต้นนำ , มักเน่ (น้องเล็ก)'),
        ('กรุ๊ปเลือด : O'),
        ('ส่วนสูง : 182 cm'),
        ('น้ำหนัก : 63 kg'),
      ],
    ),
    memItem(
      id: 7,
      name: 'เลย์ (Lay)',
      imagecut: 'laycut.jpg',
      image: 'lay.png',
      history : [
        ('ชื่อจริง : จาง อี้ชิง (Zhang Yi Xing)'),
        ('วันเกิด : 7 ตุลาคม 1991'),
        ('ตำแหน่ง : นักร้องเสริม, นักเต้นหลัก'),
        ('กรุ๊ปเลือด : A'),
        ('ส่วนสูง : 177 cm'),
        ('น้ำหนัก : 62 kg'),
      ],
    ),
    memItem(
      id: 8,
      name: 'ซิ่วหมิน (Xiumin)',
      imagecut: 'xiucut.jpg',
      image: 'xiu.jpg',
      history : [
        ('ชื่อจริง : คิม มินซอก (Kim Min Seok)'),
        ('วันเกิด : 26 มีนาคม 1990'),
        ('ตำแหน่ง : นักร้องนำ, แร็ปเปอร์, นักเต้นนำ'),
        ('กรุ๊ปเลือด : B'),
        ('ส่วนสูง : 173 cm'),
        ('น้ำหนัก : 65 kg'),
      ],
    ),
    memItem(
      id: 9,
      name: 'เฉิน (Chen)',
      imagecut: 'chencut.jpg',
      image: 'chen.jpg',
      history : [
        ('ชื่อจริง : คิม จงแด (Kim Jong Dae)'),
        ('วันเกิด : 21 กันยายน 1992'),
        ('ตำแหน่ง : นักร้องเสียงหลัก'),
        ('กรุ๊ปเลือด : B'),
        ('ส่วนสูง : 177 cm'),
        ('น้ำหนัก : 64 kg'),
      ],
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
        itemCount: memList.length,
        itemBuilder: (BuildContext context, int index) {
          var mems = memList[index];

          return Card(
            margin: const EdgeInsets.all(8.0),
            color: Colors.white30,
            child: InkWell(
              onTap: () {
                print(mems); //item.toString()
                Navigator.pushNamed(
                  context,
                  memDetails.routeName,
                  arguments: mems,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${mems.imagecut}',
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
                          '${mems.name}',
                          style: GoogleFonts.mali(
                              fontSize: 22.0,
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
