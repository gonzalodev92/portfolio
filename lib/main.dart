import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gonzalolopez_webpage/app_edittext.dart';
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
              Header(),
              About(),
              Services(),
              Portfolio(),
              TechStack(),
              Contact(),
              Social(),
            ],
          ),
        ),
      ),
    );
  }
}

class Social extends StatelessWidget {
  const Social({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(24),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 12),
            child: Container(
              alignment: Alignment.center,
              width: 50.0,
              height: 50.0,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: AppColors.hexToColor('212529'),
                shape: BoxShape.circle,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/behance.png',
                    colorBlendMode: BlendMode.color,
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12),
            child: Container(
              alignment: Alignment.center,
              width: 50.0,
              height: 50.0,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: AppColors.hexToColor('212529'),
                shape: BoxShape.circle,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/linkedin.png',
                    colorBlendMode: BlendMode.color,
                    height: 22,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12),
            child: Container(
              width: 50.0,
              height: 50.0,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: AppColors.hexToColor('212529'),
                shape: BoxShape.circle,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/github.png',
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 50.0,
            height: 50.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.hexToColor('212529'),
              shape: BoxShape.circle,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/whatsapp.png',
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/map2.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Center(
          child: Container(
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(800),
                  blurRadius: 20.0,
                  spreadRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(22),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    child: Text(
                      "CONTACT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.hexToColor('5D5D5D'),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 16),
                    child: TextFormField(
                      style: TextStyle(
                        color: AppColors.hexToColor('929292'),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: AppColors.hexToColor('5D5D5D'),
                        ),
                        labelText: "Name",
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                          color: AppColors.hexToColor('5D5D5D'),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: AppColors.hexToColor('5D5D5D'),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: AppColors.hexToColor('5D5D5D'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12),
                    child: TextFormField(
                      style: TextStyle(
                        color: AppColors.hexToColor('929292'),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: AppColors.hexToColor('5D5D5D'),
                        ),
                        labelText: "Email",
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                          color: AppColors.hexToColor('5D5D5D'),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: AppColors.hexToColor('5D5D5D'),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: AppColors.hexToColor('5D5D5D'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12),
                    child: TextFormField(
                      style: TextStyle(
                        color: AppColors.hexToColor('929292'),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: AppColors.hexToColor('5D5D5D'),
                        ),
                        labelText: "Phone",
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                          color: AppColors.hexToColor('5D5D5D'),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: AppColors.hexToColor('5D5D5D'),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: AppColors.hexToColor('5D5D5D'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12),
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 10,
                      style: TextStyle(
                        color: AppColors.hexToColor('929292'),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.message,
                          color: AppColors.hexToColor('5D5D5D'),
                        ),
                        labelText: "Message",
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                          color: AppColors.hexToColor('5D5D5D'),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: AppColors.hexToColor('5D5D5D'),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: AppColors.hexToColor('5D5D5D'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      child: Container(
                        child: RaisedButton(
                          color: AppColors.hexToColor('F77947'),
                          child: Container(
                            padding: EdgeInsets.all(22),
                            child: Text(
                              "SEND MESSAGE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class TechStack extends StatelessWidget {
  const TechStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text(
              "TECH STACK",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.hexToColor('5D5D5D'),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'assets/images/ios.png',
                    width: 250,
                    height: 100,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/images/android.png',
                    width: 200,
                    height: 150,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/images/flutter.png',
                    width: 250,
                    height: 230,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/images/java.png',
                    width: 160,
                    height: 140,
                  ),
                ),
                Container(
                  //  color: Colors.blue,
                  child: Image.asset(
                    'assets/images/firebase.png',
                    width: 320,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24, left: 32, right: 32),
      color: AppColors.hexToColor('F8F8F8'),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text(
              "PORTFOLIO",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.hexToColor('5D5D5D'),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 32, right: 32),
                    color: Colors.red,
                    height: 400,
                    child: Column(
                      children: <Widget>[],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 32),
                    color: Colors.red,
                    height: 400,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 32),
                    color: Colors.red,
                    height: 400,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 32, right: 32),
                    color: Colors.red,
                    height: 400,
                    child: Column(
                      children: <Widget>[],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 32),
                    color: Colors.red,
                    height: 400,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 32),
                    color: Colors.red,
                    height: 400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 24),
          child: Text(
            "SERVICES",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.hexToColor('5D5D5D'),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
              fontSize: 40,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 22, bottom: 42, left: 42, right: 42),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 150.0,
                              height: 150.0,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: AppColors.hexToColor('F77947'),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.brush,
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              //  color: Colors.red,
                              margin: EdgeInsets.only(top: 12),
                              child: Text(
                                "UX Design",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.hexToColor('5D5D5D'),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.0,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12, left: 32, right: 32),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.hexToColor('929292'),
                                  fontFamily: 'Montserrat',
                                  height: 1.5,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2.0,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 150.0,
                            height: 150.0,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: AppColors.hexToColor('F77947'),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.phone_android,
                              size: 80,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Text(
                              "Mobile App Development",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.hexToColor('5D5D5D'),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 12, left: 32, right: 32),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.hexToColor('929292'),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                letterSpacing: 2.0,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 150.0,
                            height: 150.0,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: AppColors.hexToColor('F77947'),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.laptop,
                              size: 80,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Text(
                              "Web Development",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.hexToColor('5D5D5D'),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 12, left: 32, right: 32),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.hexToColor('929292'),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                letterSpacing: 1.0,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.hexToColor('F8F8F8'),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text(
              "ABOUT",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.hexToColor('5D5D5D'),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 100, right: 100, top: 24, bottom: 24),
            child: Text(
              "Mobile Developer with 7 years of experience helping tech companies and startups to create and grow their products.\nI build native and hybrid apps for iOS and Android, with a solid understanding of the full mobile development life cycle, from requirements and planning to development, release, and maintenance.\n\nProactive and enthusiastic, constantly learning new emerging technologies and always chasing the latest trends of mobile development to produce innovative, beautiful and easy-to-use applications.\n\nI am used to applying efficient practices to achieve a clean, highly readable, and maintainable code.nI’m not only a professional with technical expertise but also a good problem solver, able to identify customer’s needs.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.hexToColor('929292'),
                fontFamily: 'Montserrat',
                height: 1.5,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/header.png'),
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
        MenuSection(),
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
                width: 140.0,
                height: 140.0,
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
                padding: EdgeInsets.only(right: 42, top: 18),
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
                    fontSize: 60,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 42),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Container(
                    child: RaisedButton(
                      color: AppColors.hexToColor('F77947'),
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
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MenuSection extends StatelessWidget {
  const MenuSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                "TECH STACK",
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
    );
  }
}
