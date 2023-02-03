import 'package:flutter/material.dart';

class Top3PopularBundles extends StatefulWidget {
  const Top3PopularBundles({Key? key}) : super(key: key);

  @override
  State<Top3PopularBundles> createState() => _Top3PopularBundlesState();
}

class _Top3PopularBundlesState extends State<Top3PopularBundles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top 3 popular bundles',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff554d56)),
              ),
              Image.asset(
                'assets/icons/navigate_icon.png',
                height: 36,
                width: 36,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          height: 120,
          width: double.maxFinite,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  image: AssetImage('assets/images/turkish_tea_bundle.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken))),
          child: Center(
              child: Text(
            'Turkish tea time bundle',
            style: TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.w600),
          )),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(right: 16, left: 16),
          height: 120,
          width: double.maxFinite,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  image: AssetImage('assets/images/samosa_bundle.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken))),
          child: Center(
              child: Text(
            'Delicious Samosa bundle',
            style: TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.w600),
          )),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(right: 16, left: 16),
          height: 120,
          width: double.maxFinite,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  image: AssetImage('assets/images/taiyaki_ice_creem.jpeg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken))),
          child: Center(
              child: Text(
            'Taiyaki lovers bundle',
            style: TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.w600),
          )),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
