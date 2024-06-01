import 'package:flutter/material.dart';

class MusicCards extends StatelessWidget {
  const MusicCards({super.key});

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
                              "https://pbs.twimg.com/media/CNDDNfBW8AA7F7O.jpg"),
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
                        "Relaxing",
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
                              "https://getwallpapers.com/wallpaper/full/d/3/9/609507.jpg"),
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
                        "Soothing",
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
                              "https://www.pixelstalk.net/wp-content/uploads/2016/10/Deep-ocean-images-pacify-mind.jpg"),
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
                        "Deep Dive",
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
