// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:microfinance/util/colorstyle.dart';

// ignore: must_be_immutable
class SearchItem extends StatelessWidget {
  double width;
  SearchItem({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      const  Icon(
          Icons.search,
          color: darkblue,
        ),
        SizedBox(
          height: 30,
          width: width,
          child:const SearchBar(
            
            hintText: "ຄົ້ນຫາ",
          ),
        ),
      ],
    );
  }
}
