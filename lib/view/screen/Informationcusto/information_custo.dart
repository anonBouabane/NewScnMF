import 'package:flutter/material.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/colorstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';

class InfoCustoScreen extends StatefulWidget {
  const InfoCustoScreen({super.key});

  @override
  State<InfoCustoScreen> createState() => _InfoCustoScreenState();
}

class _InfoCustoScreenState extends State<InfoCustoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.Background), fit: BoxFit.fill),
        ),
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      LogoWidget(),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Column(
                          children: [
                            Card(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "ຂໍ້ມູນລູກຄ້າ",
                                        style: textheaderTitle,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.search,
                                            color: normalcolors,
                                          ),
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2.5,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    Images.input_research),
                                              ),
                                            ),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 6.0,
                                                          horizontal: 50)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "ຮູບ",
                                        style: regulardark,
                                      ),
                                      Text(
                                        "ຊື່ລູກຄ້າ",
                                        style: regulardark,
                                      ),
                                      Text(
                                        "ອາຍຸ",
                                        style: regulardark,
                                      ),
                                      Text(
                                        "ເບີໂທ",
                                        style: regulardark,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ],
                              ),
                            ),SizedBox(
                              height: 500,
                              width: double.infinity,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        height: double.infinity,
        width: double.infinity,
      ),
      bottomNavigationBar: const WidgetBottomNav(),
    );
  }
}
