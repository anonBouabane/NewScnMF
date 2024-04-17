import 'package:flutter/material.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';

class DetailInfoCusto extends StatefulWidget {
  const DetailInfoCusto({super.key});

  @override
  State<DetailInfoCusto> createState() => _DetailInfoCustoState();
}

class _DetailInfoCustoState extends State<DetailInfoCusto> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    print('id is ==>> ${id}');

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
                            'ຊື່ລູກຄ້າ',
                            style: regulardark,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ອາຍຸ :  ",
                                style: regulardark,
                              ),
                              Text(
                                "ເຮືອນເລກທີ :  ",
                                style: regulardark,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ເບີໂທ :  ",
                                style: regulardark,
                              ),
                              Text(
                                "ຫນ່ວຍ :  ",
                                style: regulardark,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ເບີວັອດແອັບ :  ",
                                style: regulardark,
                              ),
                              Text(
                                "ບ້ານ :  ",
                                style: regulardark,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ອາຊີບ : ",
                                style: regulardark,
                              ),
                              Text(
                                "ເມືອງ :  ",
                                style: regulardark,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ສະຖານທີ່ເຮັດວຽກ : ",
                                style: regulardark,
                              ),
                              Text(
                                "ແຂວງ : ",
                                style: regulardark,
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
                                style: regulardark,
                              ),
                              Text(
                                "ວັນທີອອກບັດປະຈຳຕົວ",
                                style: regulardark,
                              ),
                              Text(
                                "ວັນທີຫມົດອາຍຸ",
                                style: regulardark,
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
                                style: regulardark,
                              ),
                              Text(
                                "01-05-04",
                                style: regulardark,
                              ),
                              Text(
                                "01-05-03",
                                style: regulardark,
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
