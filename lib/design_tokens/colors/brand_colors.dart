import 'package:app_ui/core/models/brand_color.dart';
import 'package:flutter/material.dart';

class BrandColors {
  BrandColors._();

  static final BrandColor black = BrandColor(
    primary: const Color(0xff000000),
    light: const Color(0xffF5F5F5),
    dark: const Color(0xff666666),
  );

  static final BrandColor blue = BrandColor(
    primary: const Color(0xff0C29FF),
    light: const Color(0xffEBEDFF),
    dark: const Color(0xff1D2566),
  );

  static final BrandColor green = BrandColor(
    primary: const Color(0xff31B67A),
    light: const Color(0xffEBFAF3),
    dark: const Color(0xff1D6645),
  );

  static final BrandColor yellow = BrandColor(
    primary: const Color(0xffFFBC01),
    light100: const Color(0xffFFFAEB),
    light200: const Color(0xffFFEEBF),
    dark: const Color(0xff85691B),
  );

  static final BrandColor pink = BrandColor(
    primary: const Color(0xffFF90A5),
    light: const Color(0xffFFEBEE),
    dark: const Color(0xff661D2A),
  );

  static final BrandColor red = BrandColor(
    primary: const Color(0xffFD3C2D),
    light: const Color(0xffFFECEB),
    dark: const Color(0xff66221D),
  );
}
