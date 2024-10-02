import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_app/Features/login/Login_View.dart';
import 'package:task_app/core/Colo_Theme/Color_page.dart';
import 'package:task_app/core/constants/asset_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _HomePageState();
}

class _HomePageState extends State<SplashPage> {
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Column(
            children: [
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(AssetImages.logo),
              ),
              SizedBox(
                height: 60,
              ),
              Text('The best chat app of this century'),
              SizedBox(
                height: 170,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorApp.secandaryColor,
                  fixedSize: Size(350, 50),
                ),
                onPressed: () async {
                  await Future.delayed(Duration(seconds: 3), () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  });
                },
                child: Text(
                  'Contieue',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
