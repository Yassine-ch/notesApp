import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:  const [
        Text(
          'Notes' ,
          style: TextStyle(
              fontSize: 30,
        ),
        ),
        Spacer(),
        CustomSearchIcon(),

      ],
    );
  }
}


