import 'package:flutter/material.dart';

class ProfileHistoryWidget extends StatelessWidget {
  ProfileHistoryWidget({super.key, required this.img});
  String? img;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              width: 180,
              height: 240,
              child: Image.asset(
                img!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          left: 5,
          child: SizedBox(
            width: 170,
            height: 230,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage(
                            'assets/images/277309892_3284829008466633_3090738980581040698_n.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage(
                              'assets/images/118404592_2464130307218808_3439420723412767075_n.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage:
                              AssetImage('assets/images/54452 (49).jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '25.9k likes',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 15,
          child: Column(
            children: [
              Text(
                'Image create by AI',
                style: TextStyle(color: Colors.white, fontSize: 15),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '#fresh #image #natural',
                style: TextStyle(
                  color: Color.fromARGB(255, 218, 218, 218),
                  fontSize: 11,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
