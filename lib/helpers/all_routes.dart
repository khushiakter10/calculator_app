import 'dart:io';
import 'package:flutter/cupertino.dart';




final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String signInUserScreen = '/signInUserScreen';
  static const String signUpUserScreen = '/signUpUserScreen';
  static const String homeScreen = '/homeScreen';
  static const String forgetPasswordOtp = '/forgetPasswordOtp';
  static const String createNewPasswordScreen = '/createNewPasswordScreen';
  static const String khusiScreen = '/khusiScreen';


}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {

  //     case Routes.signInUserScreen:
  //       return Platform.isAndroid
  //           ? _FadedTransitionRoute(widget: const SignInUserScreen(), settings: settings)
  //           : CupertinoPageRoute(builder: (context) => const SignInUserScreen());
  //
  //     case Routes.signUpUserScreen:
  //       return Platform.isAndroid
  //           ? _FadedTransitionRoute(widget: const SignUpUserScreen(), settings: settings)
  //           : CupertinoPageRoute(builder: (context) => const SignUpUserScreen());
  //
  // case Routes.homeScreen:
  //       return Platform.isAndroid
  //           ? _FadedTransitionRoute(widget: const HomeScreen(), settings: settings)
  //           : CupertinoPageRoute(builder: (context) => const HomeScreen());
  //
  //
  // case Routes.forgetPasswordOtp:
  //       return Platform.isAndroid
  //           ? _FadedTransitionRoute(widget: const ForgetPasswordOtp(), settings: settings)
  //           : CupertinoPageRoute(builder: (context) => const ForgetPasswordOtp());
  //
  //
  //
  // case Routes.createNewPasswordScreen:
  //       return Platform.isAndroid
  //           ? _FadedTransitionRoute(widget: const CreateNewPasswordScreen(), settings: settings)
  //           : CupertinoPageRoute(builder: (context) => const CreateNewPasswordScreen());
  //
  //
  // case Routes.khusiScreen:
  //       return Platform.isAndroid
  //           ? _FadedTransitionRoute(widget: const KhusiScreen(), settings: settings)
  //           : CupertinoPageRoute(builder: (context) => const KhusiScreen());
  //



      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
    settings: settings,
    reverseTransitionDuration: const Duration(milliseconds: 1),
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionDuration: const Duration(milliseconds: 1),
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: Curves.ease,
        ),
        child: child,
      );
    },
  );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
