
import 'package:flutter/material.dart';

abstract class IDwTextStyleTheme extends ThemeExtension<IDwTextStyleTheme> {
  /// AppBar text style to home page
  TextStyle get homeAppBarTextStyle;

  /// Title text style to status bar
  TextStyle get statusTitleTextStyle;

  /// Person name text style to status bar
  TextStyle get statusPersonNameTextStyle;

  /// AppBar text style to conversation page
  TextStyle get messageAppBarTextStyle;

  /// Message context text style to conversation page
  TextStyle get messageContentTextStyle;

  /// Message date text style to conversation page
  TextStyle get messageDateTextStyle;

  /// Person name text style to listing chats in home page
  TextStyle get chatNameTextStyle;

  /// Chat description(last message) text style to listing chats in home page
  TextStyle get chatDescriptionTextStyle;

  /// Chat last message date text style to listing chats in home page
  TextStyle get chatDateTextStyle;

  /// Text Style of text field to send message in conversation page
  TextStyle get sendMessageTextStyle;
}
