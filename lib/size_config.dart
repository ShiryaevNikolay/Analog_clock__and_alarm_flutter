import 'package:flutter/cupertino.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Получает пропорциональную высоту в соотвествии с размером экрана
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 896 - это высота макета, которую использует дизайнер,
  // или можно скачать iPhone 11
  return (inputHeight / 896.0) * screenHeight;
}

// Получает пропорциональную ширину в соотвествии с размером экрана
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 414 - это высота макета, которую использует дизайнер,
  // или можно скачать iPhone 11
  return (inputWidth / 414.0) * screenWidth;
}
