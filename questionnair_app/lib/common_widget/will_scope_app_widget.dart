import 'package:flutter/widgets.dart';

class WillPopScopeWidget extends StatelessWidget {
  const WillPopScopeWidget({
    super.key,
    required this.child,
    this.onWillPop,
  });

  final Widget child;
  final Function()? onWillPop;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (onWillPop != null) {
            onWillPop?.call();
            return true;
          } else {
            return false;
          }
        },
        child: child);
  }
}
