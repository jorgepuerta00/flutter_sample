import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/constants/theme.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_switch.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _themeProvider = Provider.of<ThemeChanger>(context);

    changeTheme() {
      _themeProvider.setTheme(
          _themeProvider.getTheme == lightTheme ? darkTheme : lightTheme);
    }

    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Privacy Mode'),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                CustomSwitch(
                    title: 'Dark Mode',
                    subtitle: 'Mode short description',
                    isSwitched: _themeProvider.isDarkTheme,
                    onPressed: () => changeTheme()),
                ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: new Button(
                        "Save",
                        TextAlign.center,
                        15,
                        70,
                        FontWeight.bold,
                        Colors.blueAccent,
                        Colors.white,
                        Colors.blueAccent,
                        const EdgeInsets.only(left: 140, right: 140, top: 20.0),
                        null,
                        () => {}))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
