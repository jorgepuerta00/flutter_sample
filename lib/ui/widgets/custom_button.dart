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
      width: context != null ? MediaQuery.of(context).size.width : button.width,
      margin: button.margin != null
          ? button.margin
          : const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
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
  double width;
  FontWeight fontWeight;
  Color textColor;
  Color backgroundColor;
  Color borderColor;
  EdgeInsets margin;
  Function onPressed;
  EdgeInsets padding;
  Widget suffixIcon;

  Button(
      {this.text,
      this.textAlign,
      this.fontSize,
      this.width,
      this.fontWeight,
      this.textColor,
      this.backgroundColor,
      this.borderColor,
      this.margin,
      this.onPressed,
      this.padding,
      this.suffixIcon});
}
