enum AppTypeEnum {
  M2,
  M3,
}

extension AppTypeEnumX on AppTypeEnum {
  bool get isM2 => this == AppTypeEnum.M2;
  bool get isM3 => this == AppTypeEnum.M3;
}
