/*
 * Copyright 2020 Pedro Massango. All rights reserved.
 * Created by Pedro Massango on 7/7/2020.
 */

import 'package:flutter/material.dart';

class ColumnHeader extends StatelessWidget {

  static double height = 35.0;

  final Widget child;

  const ColumnHeader({this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.maxFinite,
      child: child,
    );
  }
}
