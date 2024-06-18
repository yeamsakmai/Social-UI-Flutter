import 'package:flutter/material.dart';
import 'package:social_ui/model/stories_model.dart';
import 'package:social_ui/widget/insign_widget.dart';
import 'package:social_ui/widget/profile_history_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                          'assets/images/depositphotos_633520428-stock-illustration-cute-border-collie-dog-winking.jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Jonh Smith ',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                          size: 18,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '@jonh_smith',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InsignWidget(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Travel freak - UI/UX Designer',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'www.travelfreak.com',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Wrap(
                children: [
                  for (int i = 0; i < lstStoriesModel.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ProfileHistoryWidget(
                        img: lstStoriesModel[i].image,
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
