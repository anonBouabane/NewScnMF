import 'package:flutter/material.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';
import 'package:microfinance/view/widget/searchbar.dart';

class CheckAssetsScreen extends StatefulWidget {
  const CheckAssetsScreen({super.key});

  @override
  State<CheckAssetsScreen> createState() => _CheckAssetsScreenState();
}

class _CheckAssetsScreenState extends State<CheckAssetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
                  height: 5,
                ),
                Card(
                  child: Column(
                    children: [
                      Text(
                        "ກວດສອບຊັບສິນລູກຄ້າ",
                        style: textheaderTitle,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
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
                            style: regularbold,
                          ),
                          Text(
                            "ຊື່ລູກຄ້າ",
                            style: regularbold,
                          ),
                          Text(
                            "ອາຍຸ",
                            style: regularbold,
                          ),
                          Text(
                            "ເບີໂທ",
                            style: regularbold,
                          ),
                          Text(
                            "ສະຖານະ",
                            style: regularbold,
                          ),
                          Text(
                            "ກວດສອບ",
                            style: regularbold,
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
