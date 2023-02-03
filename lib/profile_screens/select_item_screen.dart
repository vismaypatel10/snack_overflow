import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:snck_overflow/model/select_items_model.dart';
import 'package:snck_overflow/profile_screens/build_bundle.dart';

import '../widgets/ctm_textbutton.dart';
import '../widgets/stepper.dart';

class SelectItem extends StatefulWidget {
  SelectItem({Key? key}) : super(key: key);

  @override
  State<SelectItem> createState() => _SelectItemState();
}

class _SelectItemState extends State<SelectItem> {
  HashSet isSelected = new HashSet();

  // bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 160,
        width: double.maxFinite,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 5, spreadRadius: 5.0)
        ]),
        child: Column(
          children: [
            ctm_txtbutton(
              btncolor: Color(0xffee6723),
              btntext: 'Build a snack bundle box',
              btntextcolor: Color(0xFFffffff),
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BuildBundle(),
                    ));
              },
            ),
            ctm_txtbutton(
              btncolor: Color(0xffedeced),
              btntext: 'Back',
              btntextcolor: Color(0xFFee6723),
              margin: const EdgeInsets.all(16),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 38,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    stepper(
                      color: const Color(0xffedeced),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    stepper(
                      color: const Color(0xffedeced),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    stepper(
                      color: const Color(0xfffecf33),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    stepper(
                      color: const Color(0xffedeced),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24),
                child: const Text(
                  'Select 4 items below that suits your mood.',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 35),
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    itemCount: select_items.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              MultipleSelecteItems(
                                  select_items[index].images, index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xfff7f7f7)),
                              height: 220,
                              width: 168,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        height: 120,
                                        width: 120,
                                        child: Image.asset(
                                          select_items[index].images,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 44,
                                      width: 120,
                                      margin:
                                          EdgeInsets.fromLTRB(24, 8, 24, 24),
                                      child: Text(
                                        select_items[index].imgtext,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff554d56)),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Visibility(
                            visible:
                                isSelected.contains(select_items[index].images),
                            // maintainAnimation: true,
                            // maintainSize: true,
                            // maintainState: true,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected.remove(select_items[index].images);
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Color(0xffc8cf2d), width: 3),

                                  //Color(0xfff7f7f7)
                                ),
                                child: Center(
                                    child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: Image.asset(
                                    'assets/icons/Slt_RadioButton_icon.png',
                                    scale: 2.3,
                                  ),
                                )),
                                height: 220,
                                width: 168,
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      // crossAxisSpacing: 5,
                      // mainAxisSpacing: 5
                    ),
                    scrollDirection: Axis.vertical,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void MultipleSelecteItems(String image_path, index) {
    setState(() {
      if (isSelected.contains(image_path)) {
        isSelected.remove(image_path);
      } else {
        isSelected.add(image_path);
      }
    });
  }
}
