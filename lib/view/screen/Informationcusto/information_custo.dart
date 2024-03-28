import 'package:flutter/material.dart';
import 'package:microfinance/controller/authcontroller.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/Informationcusto/InfoDetailCusto.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';
import 'package:microfinance/view/widget/searchbar.dart';
import 'package:provider/provider.dart';

class InfoCustoScreen extends StatefulWidget {
  const InfoCustoScreen({super.key});

  @override
  State<InfoCustoScreen> createState() => _InfoCustoScreenState();
}

class _InfoCustoScreenState extends State<InfoCustoScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<AuthController>(context, listen: false).getAlldatacusto();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.Background), fit: BoxFit.cover),
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
                                            MediaQuery.of(context).size.width /
                                                2.2)
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
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Consumer<AuthController>(
                            builder: (context, value, child) {
                          if (value.isloading) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                          final getdata = value.getalldata;
                          return ListView.separated(
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: getdata.length,
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DetailInfoCusto()));
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const CircleAvatar(
                                            radius: 20,
                                            backgroundImage:
                                                AssetImage(Images.LoGo),
                                          ),
                                          Text(getdata[index]
                                              .fullName
                                              .toString()),
                                          Text(getdata[index].age.toString()),
                                          Text(getdata[index]
                                              .phoneNumber
                                              .toString()),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        }),
                      ),
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
