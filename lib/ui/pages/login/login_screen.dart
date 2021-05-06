import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/home/home_screen.dart';
import 'package:ourglass/ui/pages/login/widgets/main_widget.dart';
import 'package:ourglass/ui/pages/login/widgets/login_widget.dart';
import 'package:ourglass/ui/pages/login/widgets/signup_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  Widget startPage() {
    return new MainWidget(
        onLoginPressed: () => gotoLogin(), onSignupPressed: () => gotoSignup());
  }

  Widget loginPage() {
    return new LoginWidget(onPressed: () => gotoHome());
  }

  Widget signupPage() {
    return new SignUpWidget(onPressed: () => gotoHome());
  }

  gotoLogin() {
    _controller.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  gotoHome() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
  }

  gotoSignup() {
    _controller.animateToPage(
      2,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  PageController _controller =
      new PageController(initialPage: 1, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: _controller,
          physics: new AlwaysScrollableScrollPhysics(),
          children: <Widget>[loginPage(), startPage(), signupPage()],
          scrollDirection: Axis.horizontal,
        ));
  }
}
