import 'package:flutter/material.dart';

import '../widght/items.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF176A5D),
        actions: [
          Row(
            children: [
              const Text(
                "الاشتراك",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                width: 37,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.chevron_right_outlined,
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 37,),
          Expanded(

              child: ListView.separated(
                  itemBuilder: (context, index) => ItemView(
                    image:type[index]['image'] ,
                    title: type[index]['title'],
                    unit:type[index]['unit'],
                  ),
                  separatorBuilder: (context, index) => Divider(
                        endIndent: 50,
                        indent: 50,
                        height: 1,
                        color: Colors.grey.withOpacity(.5),
                      ),
                  itemCount: type.length),),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(0xFF176A5D)),
              height: 56,
              width: 330,
              child: Center(child: Text("التالي",style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 18),)),
            ),
          )
        ],
      ),
    );
  }
}
List<Map<String,dynamic>> type=[
  {
    'image':"weghit.png",
    'title':"وزن الجسم الحالي",
    'unit':"كم"

  },
  {
    'image':"tall.png",
    'title':"قياس الطول",
    'unit':"سم"

  },{
    'image':"clock.png",
    'title':"كم عمرك؟",
    'unit':""

  },
];
