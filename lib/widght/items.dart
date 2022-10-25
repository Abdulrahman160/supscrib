import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemView extends StatefulWidget {
  const ItemView(
      {Key? key,
      required this.image,
      required this.title,

      required this.unit, })
      : super(key: key);
  final String image;
  final String title;
  final String unit;

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 9),
              child: Image.asset("assets/image/${widget.image}"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF313133),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(12),
                        color: const Color(0xFFE0E0E0).withOpacity(0.6)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.remove,
                        color: Color(0xFF8B8B8B),
                      ),
                      onPressed: (){
                        if(number<1){
                          return;
                        }
                        else{
                          number--;

                        }
                        setState(() {});
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "${widget.unit}",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF313133),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "$number",
                  style: const TextStyle(
                    fontSize: 44,
                    color: Color(0xFF313133),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(12),
                        color: const Color(0xFFE0E0E0).withOpacity(0.6)),
                    child: IconButton(
                      onPressed: () {
                        number++;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xFF8B8B8B),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
