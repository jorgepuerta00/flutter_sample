import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/constants/theme.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_switch.dart';
import 'package:provider/provider.dart';

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _themeProvider = Provider.of<ThemeChanger>(context);

    changeTheme() {
      _themeProvider.setTheme(
          _themeProvider.getTheme == lightTheme ? darkTheme : lightTheme);
    }

    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('Theme'), elevation: 0),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                CustomDivider(color: Colors.grey),
                CustomSwitch(
                    title: 'Light Mode',
                    subtitle: 'Mode short description',
                    isSwitched: !_themeProvider.isDarkTheme,
                    onPressed: () => changeTheme()),
                CustomDivider(color: Colors.grey),
                CustomSwitch(
                    title: 'Dark Mode',
                    subtitle: 'Mode short description',
                    isSwitched: _themeProvider.isDarkTheme,
                    onPressed: () => changeTheme()),
                CustomDivider(color: Colors.grey),
                ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: new Button(
                        text: "Save",
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.blue,
                        backgroundColor: Colors.white,
                        borderColor: Colors.blue,
                        onPressed: () => {}))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
