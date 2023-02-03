import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:snck_overflow/model/shopping_items_model.dart';
import 'package:snck_overflow/widgets/ctm_textbutton.dart';

import '../bottom_navigationbar.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isLoading = false;

  double totalprice = 0;

  void TotalPrice() {
    for (var x in shopping_items) {
      totalprice = totalprice + x.price;
    }
    print(totalprice);
  }

  @override
  void initState() {
    TotalPrice();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      bottomNavigationBar: ctm_txtbutton(
        btncolor: Color(0xffee6723),
        btntext: 'Pay ${totalprice}',
        btntextcolor: Colors.white,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            context: context,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height * 0.70,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16.0, right: 16, top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/logos/apple_logo.png',
                                height: 20,
                                width: 20,
                              ),
                              Text(
                                'Pay',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff007aff)),
                              ))
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/logos/mastercard.png',
                        height: 30,
                        width: 35,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              'MASTERCARD PLATINUM\n•••• 2505',
                              style: TextStyle(color: Color(0xff000000)),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 16,
                    ),
                    ListTile(
                      leading: Text(
                        'ADDRESS',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffb2b2b2)),
                      ),
                      title: Text(
                          'STEVE DONUTO\n221 MAIN ST SUITE 770\nSAN FRANCISCO CA 94107\nUNITED STATES'),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 16,
                    ),
                    ListTile(
                      leading: Text(
                        'CONTACT',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffb2b2b2)),
                      ),
                      title: Text('S.DONUTO@SNACKOVERFLOW.IO\n(123)456-7890',
                          style: TextStyle(color: Color(0xff000000))),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 16,
                    ),
                    ListTile(
                      leading: Text(
                        'CONTACT',
                        style:
                            TextStyle(fontSize: 13, color: Colors.transparent),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('SUBTOTAL',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffb2b2b2))),
                              Text('\$ 37.96',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff000000),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('SHIPPING',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffb2b2b2))),
                              Text('\$ 5.00',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff000000),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('PAY TOTAL',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xffb2b2b2))),
                              Text('\$ 42.96',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff000000),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 16,
                    ),
                    ctm_txtbutton(
                      btncolor: Color(0xffee6723),
                      btntext: 'Confirm',
                      btntextcolor: Colors.white,
                      onPressed: () {
                        EasyLoading.show(status: 'loading...');
                        //Navigator.pop(context);
                        Future.delayed(Duration(seconds: 3), () {
                          EasyLoading.dismiss();
                          EasyLoading.showToast(
                              'Your Order has been Placed ...');
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => BottomNaviBar(
                                        NewIndex: 0,
                                      )),
                              (Route route) => false);
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => BottomNaviBar(
                          //         NewIndex: 0,
                          //       ),
                          //     ));
                        });
                      },
                      margin: EdgeInsets.all(16),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        margin: EdgeInsets.all(16),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 21,
          ),
          Text(
            'Shopping cart (${shopping_items.length})',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff554d56)),
          ),
          SizedBox(
            height: 21,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    // height: 1,
                    thickness: 2,
                  );
                },
                itemCount: shopping_items.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    height: 120,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:
                                      AssetImage(shopping_items[index].images),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  shopping_items[index].imgtext,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color(
                                        0xff554d56,
                                      )),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  shopping_items[index].description,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff979197)),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "\$ ${shopping_items[index].price}",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff554d56)),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/rating_icon.png',
                                      height: 15,
                                      width: 15,
                                    ),
                                    Text(
                                      shopping_items[index].rating,
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                    Image.asset(
                                      'assets/icons/timer_icon.png',
                                      height: 15,
                                      width: 15,
                                    ),
                                    Text(
                                      shopping_items[index].time,
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    'Remove this item',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff554d56)),
                                  ),
                                  actions: [
                                    Text(
                                      'If proceed, all the items saved in this Wishlist will be gone permanently.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff979197)),
                                    ),
                                    SizedBox(
                                      height: 36,
                                    ),
                                    ctm_txtbutton(
                                      btncolor: Color(0xffedeced),
                                      btntext: 'Yes, remove',
                                      btntextcolor: Color(0xffee6723),
                                      onPressed: () {
                                        shopping_items.removeAt(index);
                                        setState(() {
                                          Navigator.pop(context);
                                        });
                                      },
                                      margin:
                                          EdgeInsets.only(left: 16, right: 16),
                                    ),
                                    ctm_txtbutton(
                                      btncolor: Color(0xffee6723),
                                      btntext: 'Cancel',
                                      btntextcolor: Color(0xffffffff),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      margin: EdgeInsets.all(16),
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          child: Image.asset(
                            'assets/icons/cancel_icon.png',
                            height: 25,
                            width: 25,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
