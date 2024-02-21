import 'package:flutter/material.dart'; 
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/colorstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/widget/FormField_widget.dart';
import 'package:microfinance/view/widget/WidgwtLogo.dart';

class RegisterCusto extends StatefulWidget {
  const RegisterCusto({super.key});

  @override
  State<RegisterCusto> createState() => _RegisterCustoState();
}

class _RegisterCustoState extends State<RegisterCusto> {
  int selectedvalue = 0;
  String? gender;
  String? dropdowncity;
  String? dropdownprovince;

  var items = [
    'ນະຄອນຫລວງ',
    'ສັງທອງ',
    'ສີສັດຕະນາດ',
    'ນ້ຳງື່ມ',
    'ວຽງຈັນ',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Images.Background3), fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  LogoWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "ລົງທະບຽນຂໍ້ມູນລູກຄ້າ",
                            style: textregisterTitle,
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 30),
                                  height: 90,
                                  width: MediaQuery.of(context).size.width / 4,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(Images.icon_profile)),
                                ),
                                Column(
                                  children: [
                                    Text("ຊື່ ແລະ ນາມສະກຸນ ລູກຄ້າ",
                                        style: regular),
                                    WidgetFormfield(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      keyboardtype: TextInputType.text,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "ເພດ",
                                            style: regular,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "ຍິງ",
                                              style: regular,
                                            ),
                                            Radio(
                                              activeColor: Color.fromARGB(
                                                  255, 15, 106, 180),
                                              value: 1,
                                              groupValue: selectedvalue,
                                              onChanged: (value) => setState(
                                                  () => selectedvalue = 1),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "ຊາຍ",
                                              style: regular,
                                            ),
                                            Radio(
                                              activeColor: Color.fromARGB(
                                                  255, 15, 106, 180),
                                              value: 2,
                                              groupValue: selectedvalue,
                                              onChanged: (value) => setState(
                                                  () => selectedvalue = 2),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "ອາຍຸ",
                                            style: regular,
                                          ),
                                        ),
                                        WidgetFormfield(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          keyboardtype: TextInputType.number,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "ເບີໂທ",
                                  style: regular,
                                ),
                                Expanded(
                                    child: WidgetFormfield(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        keyboardtype: TextInputType.number)),
                                Column(
                                  children: [
                                    Text(
                                      "ເບີ",
                                      style: reguler2,
                                    ),
                                    Text(
                                      "ວ໋ອດແອັບ",
                                      style: reguler2,
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: WidgetFormfield(
                                      width: MediaQuery.of(context).size.width,
                                      keyboardtype: TextInputType.number),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "ອາຊີບ",
                                  style: regular,
                                ),
                                WidgetFormfield(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    keyboardtype: TextInputType.text),
                                Column(
                                  children: [
                                    Text(
                                      "ສະຖານທີ່",
                                      style: reguler2,
                                    ),
                                    Text(
                                      "ເຮັດວຽກ",
                                      style: reguler2,
                                    )
                                  ],
                                ),
                                Expanded(
                                    child: WidgetFormfield(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        keyboardtype: TextInputType.text))
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "ຫນ່ວຍ",
                                  style: regular,
                                ),
                                WidgetFormfield(
                                    width:
                                        MediaQuery.of(context).size.width / 8.0,
                                    keyboardtype: TextInputType.number),
                                Column(
                                  children: [
                                    Text(
                                      "ເຮືອນ",
                                      style: reguler2,
                                    ),
                                    Text(
                                      "ເລກທີ",
                                      style: reguler2,
                                    ),
                                  ],
                                ),
                                WidgetFormfield(
                                    width:
                                        MediaQuery.of(context).size.width / 7.0,
                                    keyboardtype: TextInputType.number),
                                Text(
                                  "ບ້ານ",
                                  style: regular,
                                ),
                                Expanded(
                                    child: WidgetFormfield(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        keyboardtype: TextInputType.text)),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'ເມຶອງ',
                                  style: regular,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    child: DropdownButtonFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding:
                                              EdgeInsets.only(left: 10.0)),
                                      value: dropdowncity,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: regularColor,
                                      ),
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdowncity = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Text(
                                  'ແຂວງ',
                                  style: regular,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    child: DropdownButtonFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding:
                                              EdgeInsets.only(left: 10.0)),
                                      value: dropdownprovince,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: regularColor,
                                      ),
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownprovince = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 70,
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(Images.icon_profile),
                                      ),
                                    ),
                                    Text(
                                      "ຮູບບັດ",
                                      style: regular,
                                    ),
                                    Text(
                                      "ປະຈຳຕົວ",
                                      style: regular,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "ເລກບັດປະຈຳຕົວ",
                                          style: regular,
                                        ),
                                        WidgetFormfield(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2.5,
                                            keyboardtype: TextInputType.number)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'ວັນທີອອກ',
                                              style: reguler2,
                                            ),
                                            Text(
                                              'ບັດປະຈຳຕົວ',
                                              style: reguler2,
                                            )
                                          ],
                                        ),
                                        WidgetFormfield(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            keyboardtype:
                                                TextInputType.datetime),
                                        Column(
                                          children: [
                                            Text(
                                              'ວັນທີຫມົດອາຍຸ',
                                              style: reguler2,
                                            ),
                                            Text(
                                              'ບັດປະຈຳຕົວ',
                                              style: reguler2,
                                            )
                                          ],
                                        ),
                                        WidgetFormfield(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            keyboardtype:
                                                TextInputType.datetime)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 70,
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(Images.icon_profile),
                                      ),
                                    ),
                                    Text(
                                      'ຮູບປື້ມ',
                                      style: regular,
                                    ),
                                    Text(
                                      "ສຳມະໂນຄົວ",
                                      style: regular,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "ເລກປື້ມສຳມະໂນຄົວ",
                                          style: regular,
                                        ),
                                        WidgetFormfield(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2.5,
                                            keyboardtype: TextInputType.number)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'ວັນທີອອກ',
                                              style: reguler2,
                                            ),
                                            Text(
                                              'ປື້ມສຳມະໂນຄົວ',
                                              style: reguler2,
                                            )
                                          ],
                                        ),
                                        WidgetFormfield(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            keyboardtype:
                                                TextInputType.datetime),
                                        Column(
                                          children: [
                                            Text(
                                              'ວັນທີຫມົດອາຍຸ',
                                              style: reguler2,
                                            ),
                                            Text(
                                              'ປື້ມສຳມະໂນຄົວ',
                                              style: reguler2,
                                            )
                                          ],
                                        ),
                                        WidgetFormfield(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            keyboardtype:
                                                TextInputType.datetime)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(Images.Record_icon))),
            )),
        color: regularColor,
      ),
    );
  }
}
