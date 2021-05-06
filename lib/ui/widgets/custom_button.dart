import 'package:flutter/material.dart';
import '../pages/login/widgets/../../../widgets/custom_text.dart';

enum ButtonType { outlinedButton, textButton }

abstract class ButtonShape {
  factory ButtonShape(ButtonType type) {
    switch (type) {
      case ButtonType.outlinedButton:
        return CustomOutlinedButton();
      case ButtonType.textButton:
        return CustomTextButton();
      default:
        return null;
    }
  }

  Widget build({@required BuildContext context, @required Button button});
}

class CustomOutlinedButton implements ButtonShape {
  @override
  Widget build({@required BuildContext context, @required Button button}) {
    return Container(
      width: context != null ? MediaQuery.of(context).size.width : 70,
      margin: button.margin,
      alignment: Alignment.center,
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new OutlinedButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 20.0,
                ),
                backgroundColor: button.backgroundColor,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    side: BorderSide(color: button.borderColor)),
              ),
              onPressed: button.onPressed,
              child: new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Expanded(
                      child: CustomText(
                        text: button.text,
                        textAlign: button.textAlign,
                        color: button.textColor,
                        fontWeight: button.fontWeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextButton implements ButtonShape {
  @override
  Widget build({@required BuildContext context, @required Button button}) {
    return Container(
      width: context != null ? MediaQuery.of(context).size.width : 70,
      margin: button.margin,
      alignment: Alignment.center,
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new TextButton(
              style: TextButton.styleFrom(
                padding: button.padding,
                backgroundColor: button.backgroundColor,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    side: BorderSide(color: button.borderColor)),
              ),
              onPressed: button.onPressed,
              child: new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Expanded(
                      child: CustomText(
                        text: button.text,
                        textAlign: button.textAlign,
                        color: button.textColor,
                        fontWeight: button.fontWeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Button {
  String text;
  TextAlign textAlign;
  double fontSize;
  FontWeight fontWeight;
  Color textColor;
  Color backgroundColor;
  Color borderColor;
  EdgeInsets margin;
  Function onPressed;
  EdgeInsets padding;

  Button(
      String text,
      TextAlign textAlign,
      double fontSize,
      FontWeight fontWeight,
      Color textColor,
      Color backgroundColor,
      Color borderColor,
      EdgeInsets margin,
      EdgeInsets padding,
      Function onPressed) {
    this.text = text;
    this.textAlign = textAlign;
    this.fontSize = fontSize;
    this.fontWeight = fontWeight;
    this.textColor = textColor;
    this.backgroundColor = backgroundColor;
    this.borderColor = borderColor;
    this.margin = margin;
    this.onPressed = onPressed;
    this.padding = padding;
  }
}
