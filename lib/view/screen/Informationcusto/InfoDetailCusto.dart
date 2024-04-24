import 'package:flutter/material.dart';
import 'package:microfinance/data/model/getInfocusto_model.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';

class Detailcustomer extends StatelessWidget {
  const Detailcustomer({super.key, required this.user});
  final Getalldatamodel user;

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
                            '${user.fullName}',
                            style: regularbold,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ອາຍຸ : ${user.age} ",
                                style: regularbold,
                              ),
                              Text(
                                "ເຮືອນເລກທີ :  ${user.houseNumber}",
                                style: regularbold,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ເບີໂທ : ${user.phoneNumber} ",
                                style: regularbold,
                              ),
                              Text(
                                "ຫນ່ວຍ :  ${user.houseUnit}",
                                style: regularbold,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ເບີວັອດແອັບ :  ${user.whatsAppNumber}",
                                style: regularbold,
                              ),
                              Text(
                                "ບ້ານ :  ${user.villageNamge}",
                                style: regularbold,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ອາຊີບ : ${user.customerJob}",
                                style: regularbold,
                              ),
                              Text(
                                "ເມືອງ :  ${user.districtsName}",
                                style: regularbold,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ສະຖານທີ່ເຮັດວຽກ : ${user.customerJobLocation}",
                                style: regularbold,
                              ),
                              Text(
                                "ແຂວງ : ${user.provinceName}",
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
