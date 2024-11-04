import 'package:flutter/material.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size.width * 0.25;

    if (s > 100) {
      s = 100;
    }

    return Center(
      child: SizedBox(
        width: s,
        height: s,
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
