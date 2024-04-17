import 'package:flutter/material.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';
import 'package:microfinance/view/widget/searchbar.dart';

class ReceiveCustoScreen extends StatefulWidget {
  const ReceiveCustoScreen({super.key});

  @override
  State<ReceiveCustoScreen> createState() => _ReceiveCustoScreenState();
}

class _ReceiveCustoScreenState extends State<ReceiveCustoScreen> {
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
                        "ຮັບລູກຄ້າ",
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
