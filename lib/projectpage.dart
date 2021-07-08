import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/contraints.dart';
import 'package:portfolio/modules/project.dart';
import 'package:url_launcher/url_launcher.dart';

class projectpage extends StatelessWidget {
  const projectpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: maxwidth,
            ),
            child: Padding(
              padding: const EdgeInsets.all(defaultpadding),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                        },
                          padding: EdgeInsets.all(0),
                          icon: Icon(Icons.chevron_left,
                          size: defaultpadding*1.5,
                          )
                      ),
                      SizedBox(
                        width: defaultpadding/2,
                      ),
                      Text("My Projects",
                       style: Theme.of(context).textTheme.headline5!.copyWith(
                         color: Colors.white
                       ),
                      )
                    ],
                  ),
                  SizedBox(height: defaultpadding),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: defaultpadding,
                          mainAxisSpacing: defaultpadding,
                        ),
                        itemCount: projectlist.length,
                        itemBuilder: (context, index)=> Container(
                          color: Color(0xff242430),
                          child: projectdetails(name: projectlist[index].name, description: projectlist[index].description, link: projectlist[index].link,
                            picture: projectlist[index].picture,
                          ),
                        ),
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}

class projectdetails extends StatelessWidget {
  const projectdetails({Key? key, required this.name, required this.description, required this.link, required this.picture, }) : super(key: key);
   final String name, description,link;
  final List<String> picture;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(name,
                style: Theme.of(context).textTheme.headline6,
              ),

              TextButton(onPressed: ()async{
                    await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
              },
                style: TextButton.styleFrom(
                  backgroundColor: primarycolor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultpadding/2, horizontal: defaultpadding),
                  child: Text("View Code >>",
                    style: TextStyle(
                      color: darkcolor,
                    ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: defaultpadding,),
          Expanded(
            // height: MediaQuery.of(context).size.height/2.8,
            // color: Colors.orange,
            child: CarouselSlider.builder(
              itemCount: picture.length,
              options:  CarouselOptions(
                aspectRatio: 12/8,
                viewportFraction: 0.5,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 600),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              itemBuilder: (BuildContext context, int Index, int pageViewIndex) =>
                  Container(
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: NetworkImage(picture[Index]),
                     ),
                   ),
                  ),
            ),
          ),
          SizedBox(height: defaultpadding,),
          Container(
            child: Text(description,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  height: 1.5
              ),
            ),
          ),
        ],
      ),
    );
  }
}


