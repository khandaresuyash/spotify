import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/presentation/colors.dart';
import 'package:spotify/presentation/context.dart';
import 'package:spotify/presentation/home/cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Column(
          children: [
            SafeArea(
              left: false,
              right: false,
              bottom: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    const CategoryCard(category: "Music"),
                    const CategoryCard(category: "Podcasts"),
                    const CategoryCard(category: "Audiobooks"),
                    const Spacer(),
                    //TODO: Implement customize feed
                    GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset("icons/customizeFeed.svg"))
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    children: List.generate(6, (index) {
                      return NewReleaseCard(
                          title: newReleases[index]["name"],
                          artist: newReleases[index]["artist"],
                          image: "image");
                    }),
                  ),
                  const HomeTitleWidget(title: "Made for you"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(6, (index) {
                          return const MadeForYouCard();
                        }),
                      ),
                    ),
                  ),
                  const HomeTitleWidget(title: "Your top mixes"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(6, (index) {
                          return const TopMixesCard();
                        }),
                      ),
                    ),
                  ),
                  const HomeTitleWidget(title: "Your favorite artists"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(6, (index) {
                          return const FavArtistCard();
                        }),
                      ),
                    ),
                  ),
                  const HomeTitleWidget(title: "Audiobooks for you"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SingleChildScrollView(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(6, (index) {
                            return const AudiobooksCard();
                          }),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 60,
        width: context.screenWidth,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: ThemeColors.playerBgPlayer,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/a1.jpg",
                      height: 45,
                      width: 45,
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Text(
                                "Get Lucky (feat. Pharrell Williams and Nile Rodgers)",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Text(
                              "Daft Punk",
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: ThemeColors.fontSecondary),
                            )
                          ],
                        ),
                      ),
                    ),
                    SvgPicture.asset("icons/addBox.svg"),
                    SvgPicture.asset("icons/play.svg"),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              height: 1,
              child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: ThemeColors.fontPrimary,
                      inactiveTrackColor: Colors.transparent,
                      trackHeight: 1,
                      thumbShape: SliderComponentShape.noThumb,
                      trackShape: PlayerTrackShape()),
                  child: Slider(
                    value: 90 / 100,
                    onChanged: (value) {},
                    max: 100 / 100,
                  )),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 85,
        width: context.screenWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF111111),
          Color(0xFF111111).withAlpha(130),
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "icons/home.svg",
                  height: 40,
                  width: 40,
                ),
                Text(
                  "Home",
                  style:
                      TextStyle(fontSize: 12, color: ThemeColors.fontSecondary),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "icons/discover.svg",
                  height: 40,
                  width: 40,
                ),
                Text(
                  "Discover",
                  style:
                      TextStyle(fontSize: 12, color: ThemeColors.fontSecondary),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "icons/search.svg",
                  height: 40,
                  width: 40,
                ),
                Text(
                  "Search",
                  style:
                      TextStyle(fontSize: 12, color: ThemeColors.fontSecondary),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "icons/library.svg",
                  height: 40,
                  width: 40,
                ),
                Text(
                  "Library",
                  style:
                      TextStyle(fontSize: 12, color: ThemeColors.fontSecondary),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "icons/me.svg",
                  height: 40,
                  width: 40,
                ),
                Text(
                  "Me",
                  style:
                      TextStyle(fontSize: 12, color: ThemeColors.fontSecondary),
                )
              ],
            ),
          ],
        ),
      ),
      extendBody: true,
    );
  }
}

class PlayerTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

List newReleases = [
  {"name": "Imagine", "artist": "John Lennon"},
  {"name": "Bohemian Rhapsody", "artist": "Queen"},
  {"name": "Hey Jude", "artist": "The Beatles"},
  {"name": "Like a Rolling Stone", "artist": "Bob Dylan"},
  {"name": "A Whiter Shade of Pale", "artist": "Procol Harum"},
  {"name": "Respect", "artist": "Aretha Franklin"}
];
