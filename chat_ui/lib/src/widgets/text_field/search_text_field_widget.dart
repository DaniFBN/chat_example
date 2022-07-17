import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';
import '../../utils/widget_scale_helper.dart';
import '../icon/icon_widget.dart';

class DwSearchTextFieldWidget extends StatefulWidget {
  const DwSearchTextFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onSubmitted,
    required this.onCleared,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String?) onSubmitted;
  final VoidCallback onCleared;

  @override
  State<DwSearchTextFieldWidget> createState() =>
      _DwSearchTextFieldWidgetState();
}

class _DwSearchTextFieldWidgetState extends State<DwSearchTextFieldWidget> {
  bool showClearButton = false;

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(showErrorButton);
  }

  void showErrorButton() {
    final text = widget.controller.text;

    var newShowButton = false;
    if (text.isNotEmpty) newShowButton = true;

    if (newShowButton == showClearButton) return;

    setState(() {
      showClearButton = newShowButton;
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(showErrorButton);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<IDwThemeData>()!;
    final mediaQuery = MediaQuery.of(context);
    final textStyle = theme.textStyleTheme.searchAppBarTextStyle;
    final responsiveTheme = theme.responsiveTheme;

    final defaultPadding = mediaQuery.size.width * responsiveTheme.s8Percent;
    final iconWidth = mediaQuery.size.width * responsiveTheme.s24Percent;

    return Stack(
      children: [
        TextFormField(
          controller: widget.controller,
          focusNode: widget.focusNode,
          textAlignVertical: TextAlignVertical.center,
          onFieldSubmitted: widget.onSubmitted,
          decoration: InputDecoration(
            isDense: true,
            hintText: ' Pesquisar...',
            hintStyle: textStyle.copyWith(
              fontSize: mediaQuery.widgetScale(textStyle.fontSize ?? 14),
            ),
            border: InputBorder.none,
            suffixIconColor: theme.colorTheme.appBarIconColor,
            contentPadding: EdgeInsets.only(
              top: defaultPadding,
              bottom: defaultPadding,
              left: defaultPadding,
              right: defaultPadding + (showClearButton ? iconWidth : 0),
            ),
          ),
        ),
        Positioned(
          right: defaultPadding / 2,
          bottom: 5,
          child: showClearButton
              ? GestureDetector(
                  onTap: widget.onCleared,
                  child: const DwIconWidget(icon: Icons.clear),
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
