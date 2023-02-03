import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snck_overflow/screens/Home/home_page.dart';
import 'package:snck_overflow/screens/Market/people_nearby_favorites.dart';
import 'package:snck_overflow/screens/Market/recent_users_bundles.dart';
import 'package:snck_overflow/screens/Market/search_field.dart';
import 'package:snck_overflow/screens/Market/top3_popular_bundles.dart';

import '../../widgets/ctm_showmodel_bottomsheet.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Visibility(
              visible: !isSelected,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                      //showSearch(context: context, delegate: CustomSearch());
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => SearchField(),
                      //     ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(16),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xfff7f7f7),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Image.asset(
                              'assets/icons/search_icon.png',
                              height: 24,
                              width: 24,
                            ),
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffc1bec1)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RecentUsersBundles(),
                  SizedBox(
                    height: 20,
                  ),
                  Top3PopularBundles(),
                  SizedBox(
                    height: 20,
                  ),
                  PeopleNearbyFavorites(),
                ],
              ),
            ),
            Visibility(
              visible: isSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          iconSize: 24,
                          onPressed: () {
                            //Navigator.pop(context);
                            setState(() {
                              isSelected = !isSelected;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded)),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showSearch(
                                context: context, delegate: CustomSearch());
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 16, bottom: 16, right: 16),
                            //width: 50,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xfff7f7f7),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Image.asset(
                                    'assets/icons/search_icon.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                                Text(
                                  'Search  (Click )',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffc1bec1)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 24),
                        child: Text(
                          'Recent searches',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff554d56),
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      ctm_listtile(
                        Img: 'assets/icons/recent_history__icon.png',
                        text: 'Afternoon tea',
                      ),
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        color: Color(0xffedeced),
                      ),
                      ctm_listtile(
                        Img: 'assets/icons/recent_history__icon.png',
                        text: 'Potato chips',
                      ),
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        color: Color(0xffedeced),
                      ),
                      ctm_listtile(
                        Img: 'assets/icons/recent_history__icon.png',
                        text: 'Milk jelly',
                      ),
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        color: Color(0xffedeced),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 24),
                        child: Text(
                          'Suggested',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff554d56),
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      ctm_listtile(
                        Img: 'assets/icons/wishlist_icon.png',
                        text: 'Fruit jelly',
                      ),
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        color: Color(0xffedeced),
                      ),
                      ctm_listtile(
                        Img: 'assets/icons/wishlist_icon.png',
                        text: 'Simit lovers',
                      ),
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        color: Color(0xffedeced),
                      ),
                      ctm_listtile(
                        Img: 'assets/icons/wishlist_icon.png',
                        text: 'Japanese street food',
                      ),
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        color: Color(0xffedeced),
                      ),
                      ctm_listtile(
                        Img: 'assets/icons/wishlist_icon.png',
                        text: 'Turkish tea time bundle',
                      ),
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        color: Color(0xffedeced),
                      ),
                      ctm_listtile(
                        Img: 'assets/icons/wishlist_icon.png',
                        text: 'Delicious samosa bundle',
                      ),
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        color: Color(0xffedeced),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class ctm_listtile extends StatelessWidget {
  String Img;
  String text;
  ctm_listtile({
    required this.Img,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        Img,
        height: 24,
        width: 24,
      ),
      title: Align(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Color(0xff979197)),
        ),
        alignment: Alignment(-1.2, 0),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> FoodItems = [
    'Baklava',
    'Matcha latte',
    'Ice Matcha latte',
    'Pocky bundle',
    'Taiyaki',
    'Milk jelly',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, Null);
        },
        icon: Icon(Icons.arrow_back_ios_new_rounded));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in FoodItems) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10.0))),
              context: context,
              builder: (context) {
                return ctm_ShowModelBottomSheet();
              },
            );
          },
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in FoodItems) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10.0))),
              context: context,
              builder: (context) {
                return ctm_ShowModelBottomSheet();
              },
            );
          },
          title: Text(result),
        );
      },
    );
  }
}
