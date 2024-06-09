import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/presentation/colors.dart';

class AudiobooksCard extends StatelessWidget {
  const AudiobooksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/ab.png",
              height: 180,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset("icons/audBook.svg"),
                Text(
                  "Halo: The Flood",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              "William C. Dietz",
              style: TextStyle(fontSize: 10, color: ThemeColors.fontSecondary),
            ),
          )
        ],
      ),
    );
  }
}

class FavArtistCard extends StatelessWidget {
  const FavArtistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              "assets/at.png",
              height: 140,
              width: 140,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Guns N’ Roses",
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}

class TopMixesCard extends StatelessWidget {
  const TopMixesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 140,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.withAlpha(15),
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: ThemeColors.bgPrimary, width: 0.5)),
                height: 150 - 3.5,
                width: 130 - 7,
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ThemeColors.bgPrimary, width: 0.5),
                    color: Colors.blue.withAlpha(30),
                    borderRadius: BorderRadius.circular(8)),
                height: 145 - 1.5,
                width: 130,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/a1.jpg",
                  height: 140,
                  width: 140,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 4,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Rock mix",
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7),
                    height: 5,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Discover Weekly",
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                Text(
                  "50",
                  style: TextStyle(fontSize: 11, color: Colors.purpleAccent),
                )
              ],
            ),
          ),
          Text(
            "Your weekly mixtape of fresh music.",
            style: TextStyle(fontSize: 9, color: ThemeColors.fontSecondary),
          )
        ],
      ),
    );
  }
}

class HomeTitleWidget extends StatelessWidget {
  final String title;
  const HomeTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class MadeForYouCard extends StatelessWidget {
  const MadeForYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 140,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.withAlpha(15),
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: ThemeColors.bgPrimary, width: 0.5)),
                height: 150 - 3.5,
                width: 130 - 7,
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ThemeColors.bgPrimary, width: 0.5),
                    color: Colors.blue.withAlpha(30),
                    borderRadius: BorderRadius.circular(8)),
                height: 145 - 1.5,
                width: 130,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/dw.jpg",
                  height: 140,
                  width: 140,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Discover Weekly",
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                Text(
                  "50",
                  style: TextStyle(fontSize: 11, color: Colors.purpleAccent),
                )
              ],
            ),
          ),
          Text(
            "Your weekly mixtape of fresh music.",
            style: TextStyle(fontSize: 9, color: ThemeColors.fontSecondary),
          )
        ],
      ),
    );
  }
}

class NewReleaseCard extends StatelessWidget {
  final String title;
  final String artist;
  final String image;
  const NewReleaseCard(
      {super.key,
      required this.title,
      required this.artist,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: ThemeColors.bgSecondary,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Image.asset(
            "assets/a1.jpg",
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  artist,
                  style: const TextStyle(color: ThemeColors.fontSecondary),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: ThemeColors.bgSecondary,
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      child: Text(
        category,
        style: const TextStyle(
            color: ThemeColors.fontPrimary, fontWeight: FontWeight.w100),
      ),
    );
  }
}
