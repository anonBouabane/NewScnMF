import 'package:flutter/material.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/colorstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/widget/FormField_widget.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';

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
        child: Container(color: Stycolors.background,
          
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
                      SizedBox(
                        child: Text(
                          "ລົງທະບຽນຂໍ້ມູນລູກຄ້າ",
                          style: textheaderTitle,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 30),
                                height: 90,
                                width: MediaQuery.of(context).size.width / 4,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(Images.icon_profile)),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'ຊື່',
                                            style: regular,
                                          ),
                                          WidgetFormfield(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            keyboardtype: TextInputType.text,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'ນາມສະກຸນ',
                                            style: regular,
                                          ),
                                          WidgetFormfield(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3,
                                              keyboardtype: TextInputType.text),
                                        ],
                                      ),
                                    ],
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
                                            activeColor: const Color.fromARGB(
                                                255, 15, 106, 180),
                                            value: 1,
                                            groupValue: selectedvalue,
                                            onChanged: (value) => setState(
                                                () => selectedvalue = 1),
                                          ),
                                          const SizedBox(
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
                                            activeColor: const Color.fromARGB(
                                                255, 15, 106, 180),
                                            value: 2,
                                            groupValue: selectedvalue,
                                            onChanged: (value) => setState(
                                                () => selectedvalue = 2),
                                          ),
                                          const SizedBox(
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
                                        width:
                                            MediaQuery.of(context).size.width /
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
                                      width: MediaQuery.of(context).size.width,
                                      keyboardtype: TextInputType.number)),
                              Column(
                                children: [
                                  Text(
                                    "ເບີ",
                                    style: normal,
                                  ),
                                  Text(
                                    "ວ໋ອດແອັບ",
                                    style: normal,
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
                                  width: MediaQuery.of(context).size.width / 3,
                                  keyboardtype: TextInputType.text),
                              Column(
                                children: [
                                  Text(
                                    "ສະຖານທີ່",
                                    style: normal,
                                  ),
                                  Text(
                                    "ເຮັດວຽກ",
                                    style: normal,
                                  )
                                ],
                              ),
                              Expanded(
                                  child: WidgetFormfield(
                                      width: MediaQuery.of(context).size.width,
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
                                    style: normal,
                                  ),
                                  Text(
                                    "ເລກທີ",
                                    style: normal,
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
                                      width: MediaQuery.of(context).size.width,
                                      keyboardtype: TextInputType.text)),
                            ],
                          ),
                          Row(
                            children: [
                             
                              Text(
                                'ແຂວງ',
                                style: regular,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: DropdownButtonFormField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                    value: dropdownprovince,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Stycolors.darkblue,
                                    ),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(
                                          items,
                                          style: regular,
                                        ),
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
                               Text(
                                'ເມືອງ',
                                style: regular,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: DropdownButtonFormField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                    value: dropdowncity,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Stycolors.darkblue,
                                    ),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(
                                          items,
                                          style: regular,
                                        ),
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
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
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
                                            style: normal,
                                          ),
                                          Text(
                                            'ບັດປະຈຳຕົວ',
                                            style: normal,
                                          )
                                        ],
                                      ),
                                      WidgetFormfield(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          keyboardtype: TextInputType.datetime),
                                      Column(
                                        children: [
                                          Text(
                                            'ວັນທີຫມົດອາຍຸ',
                                            style: normal,
                                          ),
                                          Text(
                                            'ບັດປະຈຳຕົວ',
                                            style: normal,
                                          )
                                        ],
                                      ),
                                      WidgetFormfield(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          keyboardtype: TextInputType.datetime)
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
                                  SizedBox(
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
                                            style: normal,
                                          ),
                                          Text(
                                            'ປື້ມສຳມະໂນຄົວ',
                                            style: normal,
                                          )
                                        ],
                                      ),
                                      WidgetFormfield(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          keyboardtype: TextInputType.datetime),
                                      Column(
                                        children: [
                                          Text(
                                            'ວັນທີຫມົດອາຍຸ',
                                            style: normal,
                                          ),
                                          Text(
                                            'ປື້ມສຳມະໂນຄົວ',
                                            style: normal,
                                          )
                                        ],
                                      ),
                                      WidgetFormfield(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          keyboardtype: TextInputType.datetime)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Center(
                                child: Text(
                                  'success',
                                  style: textheaderTitle,
                                ),
                              ),
                              icon: const Icon(
                                Icons.check,
                                size: 50.0,
                                color: Colors.green,
                              ),
                              content: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'register success fully',
                                    style: regularbold,
                                  ),
                                ],
                              ),
                              actions: [
                                Center(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'ok',
                                        style: textheaderTitle,
                                      )),
                                )
                              ],
                            );
                          });
                    },
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Images.Record_icon))),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
