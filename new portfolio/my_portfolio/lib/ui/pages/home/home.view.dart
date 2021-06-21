import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/portfolio.dart' as g;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_icons/simple_icons.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Contact Me",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        body: ScreenTypeLayout(
          mobile: mobile(),
          tablet: desktop(),
          desktop: desktop(),
        ),
      ),
    );
  }

  desktop() {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List<Widget> body = [
      SizedBox(
        width: width,
        height: height * 0.8,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              width: width * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    g.full_name,
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    g.nickname,
                    style: TextStyle(fontSize: 26.0),
                  ),
                  Text(
                    g.subTitle,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Wrap(
                    // Generate 100 widgets that display their index in the List.
                    children: List.generate(g.socialMediaLinks.length, (index) {
                      print(g.socialMediaLinks.elementAt(index)["fontAwesomeIcon"]);
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: FaIcon(g.socialMediaLinks.elementAt(index)["fontAwesomeIcon"] as IconData),
                          backgroundColor: g.socialMediaLinks.elementAt(index)["backgroundColor"] as Color,
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              width: width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/code.gif",
                    // height: 125.0,
                    // width: 125.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Center(
          child: Text(
        "What I Do ?",
        style: TextStyle(fontSize: 32.0),
      )),
    ];

    g.skills.forEach((element) {
      body.add(_whatIdoItem(element));
    });

    body.add(
      Center(
          child: Text(
        "Made with Flutter Web by Salim Benabadji",
        style: TextStyle(fontSize: 24.0),
      )),
    );
    return ListView(
      // children: body.reversed.toList(),
      children: body,
    );
  }

  mobile() {
    return Container(color: Colors.blue);
  }

  _whatIdoItem(element) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List<dynamic> skills = element["skills"] as List<dynamic>;

    return SizedBox(
      width: width,
      height: height * 0.6,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              width: width * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    element["title"],
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      // Generate 100 widgets that display their index in the List.
                      children: List.generate(element["softwareSkills"].length, (index) {
                        print(g.socialMediaLinks.elementAt(index)["fontAwesomeIcon"]);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            element["softwareSkills"][index]["fontAwesomeClassname"] as IconData,
                            color: element["softwareSkills"][index]["style"]["backgroundColor"] as Color,
                            size: 64.0,
                          ),
                          // child: Icon(SimpleIcons.github),
                        );
                      }),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: skills.map((e) {
                      return Text(
                        e,
                        style: TextStyle(fontSize: 20.0),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              width: width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Image.asset(element["fileName"]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
