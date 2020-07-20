import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:store/utils/theme.dart';

Widget close(context) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MaterialButton(
          elevation: 0,
          onPressed: () => Navigator.pop(context),
          minWidth: 45,
          height: 45,
          shape: CircleBorder(),
          color: greyBackground,
          child: Center(
            child: Icon(LineAwesomeIcons.close),
          ),
        ),
      ],
    );
