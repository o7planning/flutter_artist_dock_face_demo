import 'package:flutter/material.dart';
import 'package:flutter_artist_dock_face/flutter_artist_dock_face.dart';

import '../layout/my_dock_face_screen.dart';

class SettingsScreen extends MyDockFaceScreen {
  const SettingsScreen({super.key}) : super(currentRoute: '/settings');

  @override
  Widget buildMainContent({
    required BuildContext context,
    required DockFaceStyle dockFaceStyle,
  }) {
    return Scaffold(
      backgroundColor: dockFaceStyle.scaffoldBackground,
      // --- English Comment for Global Users ---
      // REMOVED: Static AppBar has been completely deleted to enforce the "No Topbar" design philosophy.
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'System Preferences',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F172A),
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Global configuration settings for the dock layout engine',
                style: TextStyle(fontSize: 14, color: Color(0xFF64748B)),
              ),
              const SizedBox(height: 32),
              Card(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Color(0xFFE2E8F0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.splitscreen_rounded,
                          color: Color(0xFF4361EE),
                        ),
                        title: const Text(
                          'Dock Component Sizing Breakpoints',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: const Text(
                          'Configure layout constraints and navigation widths',
                        ),
                        trailing: const Icon(Icons.chevron_right_rounded),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
