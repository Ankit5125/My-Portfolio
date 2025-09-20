import 'package:flutter/material.dart';

bool isMobile(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return size.width <= 520;
}
