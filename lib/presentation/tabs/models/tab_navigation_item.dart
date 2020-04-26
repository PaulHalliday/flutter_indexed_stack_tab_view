/// lib/presentation/tabs/models/tab_navigation_item.dart
import 'package:flutter/widgets.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });
}
