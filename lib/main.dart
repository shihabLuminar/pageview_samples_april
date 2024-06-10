// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: PageView.builder(
              itemBuilder: (context, index) => Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/1252893/pexels-photo-1252893.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"))),
                      child: Column(
                        children: [
                          Divider(
                            thickness: 3,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/676578/pexels-photo-676578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                      text: "user_name ",
                                      children: [
                                        TextSpan(
                                          text: "21h",
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(.6),
                                              fontWeight: FontWeight.normal),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.multitrack_audio,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "datasdfghjk",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 8),
                                      Icon(
                                        size: 15,
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(color: Colors.white, width: .5)),
                            child: Text(
                              "Send message",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Transform.rotate(
                            angle: 270,
                            child:
                                Icon(Icons.send, color: Colors.white, size: 30))
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
