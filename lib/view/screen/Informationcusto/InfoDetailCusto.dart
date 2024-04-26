import 'package:flutter/material.dart';
import 'package:microfinance/controller/getdatacontroller.dart';
import 'package:microfinance/data/model/getInfocusto_model.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/colorstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';
import 'package:provider/provider.dart';

class DetailCustoScreen extends StatefulWidget {
  const DetailCustoScreen({super.key});

  @override
  State<DetailCustoScreen> createState() => _DetailCustoScreenState();
}

class _DetailCustoScreenState extends State<DetailCustoScreen> {
  @override
  Widget build(BuildContext context) {
    final getID = ModalRoute.of(context)?.settings.arguments;

    final getUserBYID =
        Provider.of<Getalldatacontroller>(context, listen: false);
    return Scaffold(
      body: Container(
         color: Stycolors.background,
          child: FutureBuilder(
            future: getUserBYID.getuserdataByID(getID.toString()),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final item = snapshot.data as Getalldatamodel;
                return SingleChildScrollView(
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
                                  item.fullName.toString(),
                                  style: regularbold,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ເບີໂທ : ${item.phoneNumber}",
                                      style: regularbold,
                                    ),
                                  ],
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.start ,children: [Text("ເບີວັອດແອັບ : ${item.whatsAppNumber}",style: regularbold,)],),
                                Row(mainAxisAlignment: MainAxisAlignment.start,children: [Text("ອາຊີບ : ${item.customerJob}",style: regularbold,)],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ສະຖານທີ່ເຮັດວຽກ : ${item.customerJobLocation}",
                                      style: regularbold,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ບ້ານ : ${item.villageNamge}",
                                      style: regularbold,
                                    ),
                                  ],
                                ),Row(mainAxisAlignment: MainAxisAlignment.start ,children: [Text("ເລກທີເຮືອນ : ${item.houseNumber}",style: regularbold,)],),
                                Row(mainAxisAlignment: MainAxisAlignment.start,children: [Text("ຫນ່ວຍ : ${item.houseUnit}",style: regularbold,)],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ເມືອງ : ${item.districtsName}",
                                      style: regularbold,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("ແຂວງ : ${item.provinceName}",style: regularbold,)
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )),
      bottomNavigationBar: const WidgetBottomNav(),
    );
  }
}
