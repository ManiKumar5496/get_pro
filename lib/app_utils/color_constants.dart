import 'package:flutter/material.dart';

class AppColor {
  static const Color blackColor = Color(0xff000000);
  static const Color whiteColor = Color(0xffffffff);
  static const Color colorAccent = Color(0xFF38686A);
  static const Color primaryColor = Color(0xff01B1C9);
  static const Color redColor = Color(0xffFC3F5B);
  static const Color primaryButtonColor = Color(0xff01B1C9);
  static const Color secondaryButtonColor = Color(0xffFC3F5B);
  static const Color primaryTextColor = Color(0xff000000);
  static const Color secondaryTextColor = Color(0xff444648);
  static Color cardBgColor = HexColor.fromHex("#FFFFFF");
  static Color scaffoldBackgroundColor = Colors.grey[300]!;

  // Main_view
  static Color bottomNavBarBackground = HexColor.fromHex("#C4161C");
  static Color selectedItemColor = HexColor.fromHex("#FFFFFF");
  static Color unselectedItemColor = HexColor.fromHex("#FAFAFA");

  // Start_view
  static Color signInButtonBgColor = HexColor.fromHex("#C4161C");
  static Color slideTitleTextColor = HexColor.fromHex("#C4161C");
  static Color slideDescTextColor = HexColor.fromHex("#6C6C6C");
  static Color appIntroAppNameTextColor = HexColor.fromHex('#000000');
  static const Color startBackGroundColor = Color(0xffffffff);

  // Splash_view
  static Color splashBackGroundColor = HexColor.fromHex("#FAFAFA");

// All_set_view
  static Color allSetScreenBgColor = HexColor.fromHex("#C4161C");
  static Color allSetScreenBgColorGradientOne = HexColor.fromHex("#C4161C");
  static Color allSetScreenBgColorGradientTwo = HexColor.fromHex("#5D080B");
  static Color allSetMsgTextColor = HexColor.fromHex("#FFFFFF");
  static Color allSetButtonTextColor = HexColor.fromHex("#C4161C");

// Login_view
  static Color loginBackGroundColor = HexColor.fromHex("#C4161C");
  static Color loginInputContainerColor = HexColor.fromHex("#F5F5F5");
  static Color loginPickCountryContainerColor = HexColor.fromHex("#EFEFEF");
  static Color loginLogoBgColor = Colors.white;
  static Color loginLogoBorderColor = Colors.white;
  static Color loginProgressIndicatorColor = Colors.white;
  static Color loginViewLoginLaterTextColor = HexColor.fromHex("#FFFFFF");
  static Color loginInputTextColor = HexColor.fromHex("#000000");
  static Color loginRegenOtpMessageTextColor = HexColor.fromHex("#000000");
  static Color loginRegenOtpMessageTextLinkColor = HexColor.fromHex("#137AC0");
  static Color loginTermsTextColor = HexColor.fromHex("#5C5C5C");
  static Color loginTermsTextLinkColor = HexColor.fromHex("#137AC0");
  static Color loginRegenOtpMessageTimerColor =
      HexColor.fromHex("#000000").withOpacity(0.5);
  static Color loginPhoneInputFieldBorderColor =
      HexColor.fromHex('#EFEFEF').withOpacity(0.5);
  static Color loginOtpInputFieldBorderColor =
      HexColor.fromHex('#EFEFEF').withOpacity(0.5);
  static Color loginShowMessageTextColor = Colors.redAccent;
  static Color loginButtonEnabledColor = HexColor.fromHex("#C4161C");
  static Color loginButtonDisabledColor = HexColor.fromHex("#BABABA");

  // Home_viewL
  static Color homeViewAppBarBgColor = HexColor.fromHex("#C4161C");
  static Color homeViewBgColor = HexColor.fromHex("#FAFAFA");
  static Color userIdCardHeaderBgColor = HexColor.fromHex("#C4161C");
  static Color userIdCardHeaderLogoColor = HexColor.fromHex("#FAFAFA");
  static Color userIdCardHeaderTextColor = HexColor.fromHex("#FFFFFF");
  static Color userIdCardBodyBgColor = HexColor.fromHex("#FFFFFF");
  static Color userIdCardBodyTextColor = HexColor.fromHex("#205072");
  static Color userIdCardFooterBgColor = HexColor.fromHex("#FFFFFF");
  static Color userIdCardFooterTextColor = HexColor.fromHex("#205072");
  static Color userIdCardAvatarBgColor = HexColor.fromHex("#C4C4C4");
  static Color homeHeaderLogoBgColor = HexColor.fromHex("#FAFAFA");
  static Color aboutMeLabelColor = HexColor.fromHex("#205072");
  static Color aboutMeBgColor = HexColor.fromHex("#FFFFFF");
  static Color aboutMeTextColor = HexColor.fromHex("#231F20");
  static Color aboutMeProfileBgColor = HexColor.fromHex("#EBF6F6");
  static Color aboutMeProfileTextColor = HexColor.fromHex("#231F20");
  static Color jobAnnouncementHomePageBgColor = HexColor.fromHex("#DBF2F2");
  static Color myJobHomePageBgColor = HexColor.fromHex("#E7F2EA");
  static Color jobAnnouncementApplyNowBgColor = HexColor.fromHex("#1C9B9B");
  static Color myJobShowDetailsBgColor = HexColor.fromHex("#119E60");
  static Color jobAnnouncementApplyNowTextColor = HexColor.fromHex("#FFFFFF");
// create profile
  static Color createProfileScaffoldBgColor = HexColor.fromHex("#FAFAFA");
  static Color createProfileBackArrowColor = HexColor.fromHex("#FFFFFF");
  static Color createProfileAppBarBgColor = HexColor.fromHex("#C4161C");
  static Color createProfileAppBarLabelColor = HexColor.fromHex("#FAFAFA");
  static Color createProfileIAmALabelColor = HexColor.fromHex("#1252B3");
  static Color createProfileTellUsLabelColor = HexColor.fromHex("#000000");
  static Color createProfileAvatarBgColor = HexColor.fromHex("#C4C4C4");
  static Color createProfileLabelColor = HexColor.fromHex("#1252B3");
  static Color createProfileHpIdColor = HexColor.fromHex("#205072");
  static Color createProfileProfessionColor = HexColor.fromHex("#6C6C6C");
  static Color createProfilePhoneFieldTextColor = HexColor.fromHex("#666666");
  static Color createProfileNextButtonBgColor = HexColor.fromHex("#C4161C");
  static Color createProfileUnselectedProfesionTypeBgColor =
      HexColor.fromHex("#F5F5F5");
  static Color createProfileSelectedProfesionTypeBgColor =
      HexColor.fromHex("#FCE3E4");
  static Color createProfileProfesionTypeShadowColor =
      HexColor.fromHex("#000000").withOpacity(0.25);
  static Color createProfileNextButtonTextColor = HexColor.fromHex("#FFFFFF");
  static Color createProfileNextButtonProgressIndicatorColor = Colors.white;
  static Color createProfileDoLaterButtonBgColor = HexColor.fromHex("#FFFFFF");
  static Color createProfileDoLaterButtonTextColor =
      HexColor.fromHex("#137AC0");
  static Color createProfileCameraIconColor = Colors.white;
  static Color createProfileSelectSkillSelectedColor =
      HexColor.fromHex('#FCE3E4').withOpacity(0.6);
  static Color createProfileSelectSkillUnSelectedColor =
      HexColor.fromHex('#F5F5F5');
  static Color createProfileDropDownIconEnabledColor =
      HexColor.fromHex("#5B6173");
  static Color createProfileDropDownIconDisabledColor =
      HexColor.fromHex("#5B6173");
  static Color createProfileDropDownButtonBgColor = HexColor.fromHex("#EFEFEF");
  static Color createProfileDropDownButtonBorderColor =
      HexColor.fromHex("#EFEFEF");
  static Color createProfileSelectedLocationButtonBgColor =
      HexColor.fromHex("#B6F0C7");
  static Color createProfileSelectedLocationButtonTextColor =
      HexColor.fromHex("#5C5C5C");
  static Color createProfileTermsTextColor = HexColor.fromHex("#5C5C5C");
  static Color createProfileTermsLinkTextColor = HexColor.fromHex("#137AC0");
  static Color createProfileSaveButtonBgEnabledColor =
      HexColor.fromHex("#C4161C");
  static Color createProfileSaveButtonBgDisabledColor =
      HexColor.fromHex("#A7A7A7");
  static Color createProfileSaveButtonTextColor = HexColor.fromHex("#FFFFFF");
  static Color createProfileHpTypeCardBorderColor =
      HexColor.fromHex("#B6F0C7").withOpacity(0.6);
  static Color createProfileHpTypeCardSelectedColor =
      HexColor.fromHex("#B6F0C7").withOpacity(0.6);
  static Color createProfileHpTypeCardUnSelectedColor =
      HexColor.fromHex("#F5F5F5");
  static Color createProfileSaveButtonProgressIndicatorColor = Colors.white;
  static Color createProfileSelectedLocationProgressIndicatorColor =
      HexColor.fromHex("#B6F0C7");

  static Color inputFieldDefaultFillColor = HexColor.fromHex("#FFFFFF");
  static Color inputFieldDefaultBorderColor = HexColor.fromHex("#E5E5E5");
  static Color inputFieldDefaultHintFontColor = HexColor.fromHex('#6C6C6C');
  static Color inputFieldDefaultFontColor = HexColor.fromHex("#231F20");
  static Color inputFieldDefaultDisabledFontColor = HexColor.fromHex('#AAAAAA');
  static Color defaultScaffoldBgColor = HexColor.fromHex('#FAFAFA');
  static Color inputTextButtonDefaultSelectedColor =
      HexColor.fromHex('#FCE3E4');
  static Color inputTextButtonDefaultUnSelectedColor =
      HexColor.fromHex('#FFFFFF');

  static Color defaultSnackBarTextColor = HexColor.fromHex("#FFFFFF");
  static Color defaultSnackBarBgColor = HexColor.fromHex("#C4161C");
  static Color slideDotsActive = HexColor.fromHex("#C4161C");
  static Color slideDotsInActive = HexColor.fromHex("#FFFFFF");
  static Color slideDotsBorderActive = HexColor.fromHex("#C4161C");
  static Color slideDotsBorderInActive = HexColor.fromHex("#707070");

  static Color marketingViewLoader = HexColor.fromHex("#C4161C");

  //profile view
  static Color profilePageBgColor = HexColor.fromHex("#FAFAFA");
  static Color profilePageAvatarBgColor = HexColor.fromHex("#C4C4C4");
  static Color profilePageLabelColor = HexColor.fromHex("#1252B3");
  static Color profilePageHpIdColor = HexColor.fromHex("#205072");
  static Color profilePageAppBarBgColor = HexColor.fromHex("#C4161C");
  static Color profilePageProfessionColor = HexColor.fromHex("#6C6C6C");
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
