import 'package:flutter/material.dart';
import 'package:snck_overflow/screens/Market/Market.dart';
import 'package:snck_overflow/screens/bottom_navigationbar.dart';

class SearchField extends StatefulWidget {
  bool isSelected;
  SearchField({required this.isSelected, Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  iconSize: 24,
                  onPressed: () {
                    //Navigator.pop(context);
                    // setState(() {
                    //     widget.isSelected = !widget.isSelected;
                    // });
                  },
                  icon: Icon(Icons.arrow_back_ios_new_rounded)),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 16, bottom: 16, right: 16),
                  //width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xfff7f7f7),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
