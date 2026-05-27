import 'package:flutter/material.dart';
import 'package:flutter_artist_dock_face/flutter_artist_dock_face.dart';

import '../menu/dock_menu_model.dart';

abstract class MyDockFaceScreen extends DockFaceScreen {
  final String currentRoute;

  const MyDockFaceScreen({super.key, required this.currentRoute});

  @override
  void onNavigateTo(BuildContext context, String route) {
    // Centralized route switcher navigating seamlessly between screen modules
    Navigator.of(context).pushReplacementNamed(route);
  }

  @override
  List<DockMenuGroupModel> getDockMenuGroupModels() {
    return getDockMenuGroups(currentRoute);
  }

  @override
  DockFaceStyle buildStyle(BuildContext context) {
    // Defining matching luxury navy branding palette tokens
    const Color navyBaseDarkSidebar = Color(0xFF1E2541);
    const Color navyBaseDarkTopbar = Color(0xFF1E2531);
    const Color slateLightBackground = Color(0xFFF4F6FA);

    return const DockFaceStyle(
      scaffoldBackground: slateLightBackground,
      dockStyle: DockStyle(
        backgroundColor: navyBaseDarkSidebar,
        iconColor: Colors.white,
        textColor: Colors.white70,
        drawerWidth: 75.0,
        topSpacing: 16.0,
        itemSpacing: 8.0,
        iconSize: 24.0,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        hoverColor: Color(0x13FFFFFF),
        // White transparency layer overlay for mouse hover
        selectedColor: Color(0x26FFFFFF),
        // Elevated highlighted tone for operational selected states
        titleStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
        itemMargin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        itemPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      ),
    );
  }

  @override
  Widget? buildLogo({
    required BuildContext context,
    required DockFaceStyle dockFaceStyle,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      alignment: Alignment.center,
      child: const Icon(Icons.palette_rounded, color: Colors.white, size: 28),
    );
  }

  @override
  Widget? buildProfile({
    required BuildContext context,
    required DockFaceStyle dockFaceStyle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.white.withValues(alpha: 0.2),
        child: const Text(
          'FA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Mandatory placeholders for standard abstract DockFace items
  @override
  DockMenuItemModel? getDebugDockMenuItemModel() => null;

  @override
  DockMenuItemModel? getNotificationDockMenuItemModel() => null;

  @override
  DockMenuItemModel? getConfigurationDockMenuItemModel() => null;
}
