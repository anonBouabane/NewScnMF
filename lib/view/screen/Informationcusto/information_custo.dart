import 'package:flutter/material.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';
import 'package:microfinance/view/widget/searchbar.dart';

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
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.Background), fit: BoxFit.fill),
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                const LogoWidget(),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Column(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "ຂໍ້ມູນລູກຄ້າ",
                                  style: textheaderTitle,
                                ),
                                Row(
                                  children: [
                                    SearchItem(
                                        width:
                                            MediaQuery.of(context).size.width/2.2)
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              height: 10,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        height: double.infinity,
        width: double.infinity,
      ),
      bottomNavigationBar: const WidgetBottomNav(),
    );
  }
}
