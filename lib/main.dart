import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gonzalolopez_webpage/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/header-bg.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(right: 32),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "ABOUT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "SERVICES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "PORTFOLIO",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "EXPERIENCE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "CONTACT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        "Gonzalo Lopez",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Kaushanscript',
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 1.0,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 42),
                          width: 120.0,
                          height: 120.0,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: AppColors.hexToColor('EFF4F6'),
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(126),
                            child: Image.asset(
                              'assets/images/profile_blur.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(right: 42),
                          child: Text(
                            "Welcome To My Studio!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Kaushanscript',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 1.0,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 24),
                          child: Text(
                            "I'LL DEVELOP YOUR\nNEXT MOBILE APP",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                              fontSize: 70,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 42),
                          child: RaisedButton(
                            color: AppColors.hexToColor('FF9502'),
                            child: Container(
                              padding: EdgeInsets.all(22),
                              child: Text(
                                "TELL ME MORE",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.0,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 24),
                      child: Text(
                        "ABOUT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.0,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(24),
                      child: Text(
                        "Mobile Developer with 7 years of experience helping tech companies and startups to create and grow their products.\nI build native and hybrid apps for iOS and Android, with a solid understanding of the full mobile development life cycle, from requirements and planning to development, release, and maintenance. Proactive and enthusiastic, constantly learning new emerging technologies and always chasing the latest trends of mobile development to produce innovative, beautiful and easy-to-use applications. I am used to applying efficient practices to achieve a clean, highly readable, and maintainable code.nI’m not only a professional with technical expertise but also a good problem solver, able to identify customer’s needs.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.hexToColor('494949'),
                          fontFamily: 'Montserrat',
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Text(
                  "SERVICES",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
