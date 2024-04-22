import 'package:flutter/material.dart';
import 'package:microfinance/controller/getdatacontroller.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/colorstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';
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
      Provider.of<Getalldatacontroller>(context, listen: false);
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
                                    const Icon(
                                      Icons.search,
                                      color: lightblue,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width /
                                          2.2,
                                      child: SearchBar(
                                        onChanged: (value) {},
                                        hintText: "ຄົ້ນຫາ",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              height: 10,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Consumer<Getalldatacontroller>(
                          builder: (context, value, child) {
                            if (value.isloading) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }
                            final getdata = value.getalldata;
                            return getdata.isNotEmpty
                                ? RefreshIndicator(
                                    onRefresh: () async {
                                      await Future.delayed(
                                          const Duration(seconds: 1));
                                      Getalldatacontroller().refreshdata();
                                    },
                                    child: ListView.separated(
                                      physics:
                                          const AlwaysScrollableScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      itemCount: getdata.length,
                                      separatorBuilder: (context, index) {
                                        return const Divider();
                                      },
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'infodetailcusto',
                                                arguments:
                                                    getdata[index].customerId);
                                          },
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 60,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    const CircleAvatar(
                                                        radius: 20,
                                                        backgroundImage:
                                                            AssetImage(Images
                                                                .icon_profile)),
                                                    Text(getdata[index]
                                                        .fullName
                                                        .toString()),
                                                    Text(getdata[index]
                                                        .age
                                                        .toString()),
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
                                    ),
                                  )
                                : const SizedBox(
                                    child: Center(
                                      child: Text("ບໍ່ມີລາຍການສະແດງ"),
                                    ),
                                  );
                          },
                        ),
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
