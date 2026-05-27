import 'package:flutter/material.dart';
import 'package:flutter_artist_dock_face/flutter_artist_dock_face.dart';

List<DockMenuGroupModel> getDockMenuGroups(String currentRoute) {
  return [
    DockMenuGroupModel(
      title: 'DASHBOARD',
      subtitle: 'System core layout overview',
      showHeader: false,
      menus: [
        DockMenuItemModel(
          code: 'dashboard',
          iconData: Icons.dashboard_rounded,
          menuTitle: 'Dashboard',
          route: '/dashboard',
          notifyValue: null,
          markAsSelectedForRoutes: ['/dashboard'],
        ),
      ],
    ),
    DockMenuGroupModel(
      title: 'MAIN MENU',
      subtitle: 'Core application functional views',
      menus: [
        DockMenuItemModel(
          code: 'analytics',
          iconData: Icons.bar_chart_rounded,
          menuTitle: 'Analytics',
          route: '/analytics',
          notifyValue: 5,
          // Example notification badge count
          markAsSelectedForRoutes: ['/analytics'],
        ),
      ],
    ),
    DockMenuGroupModel(
      title: 'MANAGEMENT',
      subtitle: 'System engine configuration and settings',
      menus: [
        DockMenuItemModel(
          code: 'settings',
          iconData: Icons.settings_rounded,
          menuTitle: 'Settings',
          route: '/settings',
          notifyValue: null,
          markAsSelectedForRoutes: ['/settings'],
        ),
      ],
    ),
  ];
}
