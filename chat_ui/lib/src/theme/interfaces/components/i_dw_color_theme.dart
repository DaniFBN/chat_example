import 'package:flutter/material.dart';

abstract class IDwColorTheme extends ThemeExtension<IDwColorTheme> {
  /// Color to status bar device
  Color get statusBarColor;

  /// Color to default background
  Color get backgroundColor;

  /// Color to background when listing chats
  Color get chatListBackgroundColor;

  /// Color to use like background in message of other user
  Color get backgroundTheirMessageColor;

  /// Color to use like background in message of current logged user
  Color get backgroundMyMessageColor;

  /// Icon color to use in app bar
  Color get appBarIconColor;

  /// Icon color to use in text field to send message
  Color get sendMessageIconColor;

  /// Icon color to use in text field to attach an image
  Color get attachIconColor;

  /// Color to use like background in text field to attach image
  Color get backgroundAttachImageColor;

  /// Color to use like background in text field
  Color get backgroundSendMessageColor;

  /// Color to use like a shadow in app bar person image and image when listing
  /// chats
  Color get shadowImageColor;
}
