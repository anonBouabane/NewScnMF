import 'package:flutter/material.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';

class DetailCustostreen extends StatelessWidget {
 const DetailCustostreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Images.Background3), fit: BoxFit.fill)),
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
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            "ລາຍລະອຽດຂໍ້ມູນລູກຄ້າ",
                            style: textheaderTitle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            Images.icon_profile,
                            scale: 5,
                          ),
                          Text(
                            'ຂື່ລູກຄ້າ',
                            style: regularbold,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ອາຍຸ :  ",
                                style: regularbold,
                              ),
                              Text(
                                "ເຮືອນເລກທີ :   ",
                                style: regularbold,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ເບີໂທ :   ",
                                style: regularbold,
                              ),
                              Text(
                                "ຫນ່ວຍ :   ",
                                style: regularbold,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ເບີວັອດແອັບ :   ",
                                style: regularbold,
                              ),
                              Text(
                                "ບ້ານ :   ",
                                style: regularbold,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ອາຊີບ :  ",
                                style: regularbold,
                              ),
                              Text(
                                "ເມືອງ :   ",
                                style: regularbold,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ສະຖານທີ່ເຮັດວຽກ :  ",
                                style: regularbold,
                              ),
                              Text(
                                "ແຂວງ : ",
                                style: regularbold,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ເລກບັດປະຈຳຕົວ",
                                style: regularbold,
                              ),
                              Text(
                                "ວັນທີອອກບັດປະຈຳຕົວ",
                                style: regularbold,
                              ),
                              Text(
                                "ວັນທີຫມົດອາຍຸ",
                                style: regularbold,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "01/05/2003",
                                style: regularbold,
                              ),
                              Text(
                                "01-05-04",
                                style: regularbold,
                              ),
                              Text(
                                "01-05-03",
                                style: regularbold,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                Images.icon_profile,
                                scale: 7,
                              ),
                              Image.asset(
                                Images.icon_profile,
                                scale: 7,
                              ),
                              Image.asset(
                                Images.icon_profile,
                                scale: 7,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
      bottomNavigationBar: const WidgetBottomNav(),
    );
  }
}
