import 'package:flutter/material.dart';

import '../widgets/ctm_textbutton.dart';

class EditBundle extends StatefulWidget {
  const EditBundle({Key? key}) : super(key: key);

  @override
  State<EditBundle> createState() => _EditBundleState();
}

class _EditBundleState extends State<EditBundle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ctm_txtbutton(
        btncolor: Color(0xffee6723),
        btntext: 'Confirm',
        btntextcolor: Color(0xFFffffff),
        margin: EdgeInsets.all(16),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          'assets/icons/cancel_icon.png',
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        )),
                    const Text(
                      'Edit bundle info',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff554d56)),
                    ),
                    IconButton(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/icons/cancel_icon.png',
                          height: 25,
                          width: 25,
                          color: Colors.transparent,
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Bundle name',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 56,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(8),
                          // border: Border.all(color: Colors.grey, width: 2)
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: const Color(0xfff7f7f7),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2)),
                              contentPadding: const EdgeInsets.only(
                                  left: 17, top: 17, bottom: 17, right: 17),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              hintText: 'Make it stand out.',
                              hintStyle:
                                  const TextStyle(color: Color(0xffc1bec1))),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Bundle description',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 112,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(8),
                          // border: Border.all(color: Colors.grey, width: 2)
                        ),
                        child: TextFormField(
                          maxLines: 5,
                          // minLines: 5,
                          decoration: InputDecoration(
                              fillColor: const Color(0xfff7f7f7),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2)),
                              contentPadding: const EdgeInsets.only(
                                  left: 17, top: 17, bottom: 17, right: 17),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              hintText: 'placeholder text',
                              hintStyle:
                                  const TextStyle(color: Color(0xffc1bec1))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
