import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/contraints.dart';
import 'package:portfolio/modules/project.dart';
import 'dart:html' as html;
import 'package:portfolio/projectpage.dart';
import 'package:url_launcher/url_launcher.dart';
const _url = 'https://github.com/sumitchowdhury512';


class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: maxwidth,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                  child: Container(
                    color: Colors.white,
                    child: Drawer(
                      child: Column(
                        children: [
                          AspectRatio(aspectRatio: 1.42,
                            child: Container(
                              color: Color(0xff242430),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Spacer(flex: 2),
                                  CircleAvatar(
                                    radius: 55,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage("assets/images/profile.png"),
                                  ),
                                  Spacer(),
                                  Text("Sumit Chowdhury",
                                    style: Theme.of(context).textTheme.subtitle2,
                                  ),
                                  Text("Flutter Developer",
                                   textAlign: TextAlign.center,
                                    style: TextStyle(
                                     fontWeight: FontWeight.w300,
                                      height: 1.5
                                   ),
                                  ),
                                  Spacer(flex: 2,)
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: defaultpadding),
                            color: Color(0xff24242e),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Spacer(),
                                Container(
                                  child: IconButton(onPressed: (){},
                                    icon: Image.asset("assets/images/linkedin.png",
                                    fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: defaultpadding/2,
                                ),
                                IconButton( onPressed: _launchURL,
                                  icon: Image.asset("assets/images/github.png"),
                                ),
                                SizedBox(
                                  width: defaultpadding/2,
                                ),
                                IconButton(onPressed: (){},
                                  icon: Image.asset("assets/images/instagram.png"),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(defaultpadding),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // infoarea(title: "Residence", text: "Delhi"),
                                  // infoarea(title: "City", text: "New Delhi"),
                                  // infoarea(title: "Age", text: "21"),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Divider(),
                                      Row(
                                        children: [
                                          Padding(padding: EdgeInsets.only(bottom: defaultpadding),
                                            child: Text(
                                              "Skills",
                                              style: Theme.of(context).textTheme.subtitle2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(child: skills(
                                        name: 'flutter',
                                        percentage: 0.8,),
                                      ),
                                      SizedBox(width: defaultpadding,),
                                      Expanded(child: skills(
                                        name: 'Arduino',
                                        percentage: 0.5,),
                                      ),
                                      SizedBox(width: defaultpadding,),
                                      Expanded(child: skills(
                                        name: 'firebase',
                                        percentage: 0.4,),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: defaultpadding/2,
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      Padding(padding: EdgeInsets.symmetric(vertical: defaultpadding/2),
                                      child: Text("Coding",
                                        style: Theme.of(context).textTheme.subtitle2,
                                       ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      coding(codname: 'Dart', percentage: 0.8,),
                                      coding(codname: 'Html', percentage: 0.8,),
                                      coding(codname: 'Css', percentage: 0.6,),
                                      // coding(codname: 'C++', percentage: 0.7,),
                                      coding(codname: 'Python', percentage: 0.6,),
                                    ],
                                  ),
                                  Divider(),
                                  // FittedBox(
                                  //   child: TextButton(
                                  //       onPressed: (){},
                                  //       child: Row(
                                  //         children: [
                                  //           Text("Download CV",
                                  //           style:TextStyle(
                                  //             color: Theme.of(context).textTheme.bodyText1!.color,
                                  //           ),
                                  //           ),
                                  //           SizedBox(width: defaultpadding/2,),
                                  //           Icon(Icons.download,
                                  //           color: Theme.of(context).textTheme.bodyText1!.color,
                                  //           ),
                                  //         ],
                                  //       )
                                  //   ),
                                  // ),
                                ],
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
              SizedBox(width: defaultpadding),
              Expanded(
                flex: 7,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: [
                          AspectRatio(aspectRatio: 3,
                          child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset("assets/images/background.png",
                                fit: BoxFit.cover,
                                ),
                                Container(color: darkcolor.withOpacity(0.65),),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: defaultpadding),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Discover my Recent \n work",
                                      style: Theme.of(context).textTheme.headline3!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                       ),
                                      ),
                                      DefaultTextStyle(style: Theme.of(context).textTheme.subtitle1!,
                                          child: Row(
                                           children: [
                                             Text("I build "),
                                             AnimatedTextKit(
                                               animatedTexts: [
                                                 TyperAnimatedText("responsive web and mobile app",
                                                  speed: Duration(milliseconds: 60),
                                                 ),
                                                 TyperAnimatedText("responsive web and mobile app",
                                                   speed: Duration(milliseconds: 60),
                                                 ),
                                                 TyperAnimatedText("responsive web and mobile app",
                                                   speed: Duration(milliseconds: 60),
                                                 ),
                                               ]
                                             ),
                                           ],
                                         ),
                                      ),
                                      SizedBox(height: defaultpadding),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ElevatedButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, '/projects');
                                            },
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: defaultpadding*2,
                                                vertical: defaultpadding
                                              ),
                                              backgroundColor: primarycolor,
                                            ),
                                            child: Text("Explore Now",
                                            style: TextStyle(color: darkcolor),
                                            ),
                                          ),
                                          SizedBox(
                                            width: defaultpadding,
                                          ),
                                          ElevatedButton(
                                            onPressed: (){
                                              html.window.open(resume,'Resume');
                                            },
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: defaultpadding*2,
                                                  vertical: defaultpadding
                                              ),
                                              backgroundColor: primarycolor,
                                            ),
                                            child: Row(
                                              children: [
                                                Text("Download Resume",
                                                  style:TextStyle(
                                                   color: darkcolor,
                                                  ),
                                                ),
                                                SizedBox(width: defaultpadding/2,),
                                                Icon(Icons.download,
                                                  color: darkcolor,
                                                ),
                                              ],
                                            )
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                             ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: defaultpadding,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("My Projects",
                                  style: Theme.of(context).textTheme.headline6,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: defaultpadding,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height,
                                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: defaultpadding/2,
                                  mainAxisSpacing: defaultpadding/2
                                ),
                                  itemCount: projectlist.length,
                                  padding: EdgeInsets.all(0),
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context,index) => Card(
                                    color: Color(0xff242430),
                                    child: projects(name: projectlist[index].name, description: projectlist[index].description,)
                                    // child: ,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
// class infoarea extends StatelessWidget {
//   final String title,text;
//   const infoarea({Key? key, required this.title, required this.text}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(title,style: TextStyle(
//             color: Colors.white,
//           ),
//           ),
//           Text(text)
//         ],
//       ),
//     );
//   }
// }

class skills extends StatelessWidget {
  const skills({Key? key, required this.percentage, required this.name}) : super(key: key);
  final double percentage;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: percentage),
            duration: defaultDuration,
            builder: (context, double percent, child) =>
                Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: percent,
                      color: primarycolor,
                      backgroundColor: darkcolor,
                    ),
                    Center(
                      child: Text(
                        (percentage*100).toInt().toString()+"%",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                  ],
                ),
          ),
        ),
        SizedBox(
          height: defaultpadding/2,
        ),
        Text(name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class coding extends StatelessWidget {
  final double percentage;
  final String codname;
  const coding({Key? key, required this.percentage, required this.codname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultpadding/2),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0,end: percentage),
          duration:  defaultDuration,
          builder: (context, double percent ,child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(codname,
                  style: TextStyle(color: Colors.white),
                  ),
                  Text((percent*100).toInt().toString()+"%"),
                ],
              ),
              SizedBox(
                height: defaultpadding/2,
              ),
              LinearProgressIndicator(
                value: percent,
                color: primarycolor,
                backgroundColor: darkcolor,
              )
            ],
          )
      ),
    );
  }
}

class projects extends StatelessWidget {
  const projects({Key? key, required this.name, required this.description}) : super(key: key);
  final String name,description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultpadding),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: Theme.of(context).textTheme.subtitle2
                ),
                SizedBox(
                  height: defaultpadding*1,
                ),
                Text(description,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                    height: 1.5
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(top: defaultpadding),
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff242430),
              // alignment: Alignment.bottomLeft,
              child: Text("More Details >>",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: primarycolor,
                  height: 1.5
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
