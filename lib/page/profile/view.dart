import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xfffdc2430), Color(0xfff7b4397)])),
                child: Container(
                  width: double.infinity,
                  height: 350.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/pas.jpg",
                          ),
                          radius: 60.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "M Hendi Gunawan",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "hendigunawan233456@gmail.com",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 22.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                      child: Icon(
                                        LineIcons.github,
                                        size: 50,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    onTap: () async {
                                      final Uri url = Uri.parse(
                                          'https://github.com/hendigunawan');
                                      if (!await launchUrl(url)) {
                                        throw Exception(
                                            'Could not launch $url');
                                      }
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                      child: Icon(
                                        LineIcons.at,
                                        size: 50,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    onTap: () async {
                                      final url = Uri(
                                        scheme: 'mailto',
                                        path: 'hendigunawan233456@gmail.com',
                                      );
                                      if (await canLaunchUrl(url)) {
                                        launchUrl(url);
                                      } else {
                                        // ignore: avoid_print
                                        print("Can't launch $url");
                                      }
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                      child: Icon(
                                        LineIcons.phone,
                                        size: 50,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    onTap: () async {
                                      final Uri url =
                                          Uri.parse('tel:+62 82119269808');
                                      if (!await launchUrl(url)) {
                                        throw Exception(
                                            'Could not launch $url');
                                      }
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                      child: Icon(
                                        LineIcons.linkedin,
                                        size: 50,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    onTap: () async {
                                      final Uri url = Uri.parse(
                                          'https://www.linkedin.com/in/hendi-gunawan-a8b4b3216/');
                                      if (!await launchUrl(url)) {
                                        throw Exception(
                                            'Could not launch $url');
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
