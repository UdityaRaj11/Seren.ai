import 'package:flutter/material.dart';

class GoalMusicCards extends StatelessWidget {
  const GoalMusicCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000)),
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                elevation: 7,
                color: const Color.fromARGB(255, 30, 30, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: const NetworkImage(
                              "https://images.freecreatives.com/wp-content/uploads/2016/04/Abstract-Photography-Study-Wallpapers.jpg"),
                          height: MediaQuery.of(context).size.height / 7,
                          width: MediaQuery.of(context).size.width / 2,
                          fit: BoxFit.fill,
                        ),
                        const Positioned(
                          top: 30,
                          left: 55,
                          child: Icon(Icons.play_arrow_outlined,
                              size: 60,
                              color: Color.fromARGB(255, 255, 248, 248)),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: Text(
                        "Study",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                elevation: 7,
                color: const Color.fromARGB(255, 30, 30, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: const NetworkImage(
                              "https://wallpapertag.com/wallpaper/full/1/4/6/151697-meditation-wallpaper-2560x1440-mobile.jpg"),
                          height: MediaQuery.of(context).size.height / 7,
                          width: MediaQuery.of(context).size.width / 2,
                          fit: BoxFit.fill,
                        ),
                        const Positioned(
                          top: 30,
                          left: 55,
                          child: Icon(Icons.play_arrow_outlined,
                              size: 60,
                              color: Color.fromARGB(255, 255, 248, 248)),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: Text(
                        "Meditate",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                elevation: 7,
                color: const Color.fromARGB(255, 30, 30, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: const NetworkImage(
                              "https://www.pixelstalk.net/wp-content/uploads/2016/11/Focus-photography-widescreen-wallpapers-1920x1080.jpg"),
                          height: MediaQuery.of(context).size.height / 7,
                          width: MediaQuery.of(context).size.width / 2,
                          fit: BoxFit.fill,
                        ),
                        const Positioned(
                          top: 30,
                          left: 55,
                          child: Icon(Icons.play_arrow_outlined,
                              size: 60,
                              color: Color.fromARGB(255, 255, 248, 248)),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: Text(
                        "Focus",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
