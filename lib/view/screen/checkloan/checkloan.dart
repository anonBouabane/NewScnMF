import 'package:flutter/material.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';
import 'package:microfinance/view/widget/searchbar.dart';

class CheckLoanScreen extends StatefulWidget {
  const CheckLoanScreen({super.key});

  @override
  State<CheckLoanScreen> createState() => _CheckLoanScreenState();
}

class _CheckLoanScreenState extends State<CheckLoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.Background2), fit: BoxFit.fill),
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
                  height: 5,
                ),
                Card(
                  child: Column(
                    children: [
                      Text(
                        "ກວດສອບການປ່ອຍກູ້",
                        style: textheaderTitle,
                      ),const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SearchItem(
                              width: MediaQuery.of(context).size.width / 2)
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ),
                          Text(
                            "ສະຖານະ",
                            style: regulardark,
                          ),
                          Text(
                            "ກວດສອບ",
                            style: regulardark,
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const WidgetBottomNav(),
    );
  }
}
