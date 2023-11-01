

import '../constants/constant_path.dart';

class _AssetsImagesGen {
  const _AssetsImagesGen();

  String get eyeOff => '$kImagesPath/eye_off.png';

}

class _AssetsSvgImagesGen {
  const _AssetsSvgImagesGen();

  String get eyeOff => '$kSvgImagesPath/eye_off.svg';
  String get eyeOn => '$kSvgImagesPath/eye_on.svg';
  String get arrowDown => '$kSvgImagesPath/arrow-down.svg';
  String get arrowLeftLong => '$kSvgImagesPath/arrow-left-long.svg';
  String get bell => '$kSvgImagesPath/bell.svg';
  String get QR_icon => '$kSvgImagesPath/QR_icon.svg';
  String get search => '$kSvgImagesPath/search.svg';
  String get green_button => '$kSvgImagesPath/green_button.svg';
  String get redbutton => '$kSvgImagesPath/redbutton.svg';
  String get ratingreen => '$kSvgImagesPath/ratinggreen.svg';
  String get coupon => '$kSvgImagesPath/coupon.svg';
  String get showmore => '$kSvgImagesPath/showmore.svg';
  String get invitefriends => '$kSvgImagesPath/invite.svg';
  String get about => '$kSvgImagesPath/about.svg';
  String get policies => '$kSvgImagesPath/policies.svg';
  String get faq => '$kSvgImagesPath/faq.svg';
  String get settings => '$kSvgImagesPath/settings.svg';
  String get sliders => '$kSvgImagesPath/sliders.svg';


}

class Assets {
  Assets._();
  static const images = _AssetsImagesGen();
  static const svgImages = _AssetsSvgImagesGen();
}