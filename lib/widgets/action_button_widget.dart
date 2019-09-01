import 'package:flutter/material.dart';
import 'package:mhatb/utils/sizes.dart';

class ActionButtonWidget extends StatelessWidget {
  final Function function;
  final Color buttonColor;
  final String buttonText;

  ActionButtonWidget(this.function, this.buttonColor, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: RADIUS_CIRCLE_15),
          color: buttonColor,
          onPressed: () => function(context),
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: FONT_SIZE_22),
          ),
        ),
      ),
    );
  }
}
