import 'package:flutter/material.dart';

class NavigationService {
  late GlobalKey<NavigatorState> navigatorKey;


  NavigationService() {
    navigatorKey = GlobalKey<NavigatorState>();
  }

  navigateTo(Widget page) {
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  navigateReplace(Widget page) {
    navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  Future<void> showDialog (   Widget widget,{  BuildContext ?  context  }  ) async {
  await showAdaptiveDialog(
  context: context ?? navigatorKey.currentContext!,
  builder: (context) => widget,
  );
  }

  void showSnackbar(){
    final snackBar = SnackBar(
      content: const Text('This is a snackbar'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(snackBar);
  }
}
