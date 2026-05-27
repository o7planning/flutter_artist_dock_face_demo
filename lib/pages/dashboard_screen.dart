import 'package:flutter/material.dart';
import 'package:flutter_artist_dock_face/flutter_artist_dock_face.dart';

import '../layout/my_dock_face_screen.dart';

class DashboardScreen extends MyDockFaceScreen {
  const DashboardScreen({super.key}) : super(currentRoute: '/dashboard');

  @override
  Widget buildMainContent({
    required BuildContext context,
    required DockFaceStyle dockFaceStyle,
  }) {
    return Scaffold(
      backgroundColor: dockFaceStyle.scaffoldBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            32.0,
          ), // Increased padding for a spacious, modern canvas feel
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dashboard Workspace',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F172A),
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Welcome back, Artist!',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF64748B),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: GridView.count(
                  crossAxisCount: MediaQuery.of(context).size.width > 800
                      ? 3
                      : 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.3,
                  children: [
                    _buildStatCard(
                      'Total Widgets',
                      '142',
                      Icons.widgets_outlined,
                    ),
                    _buildStatCard(
                      'Active Core Tasks',
                      '12',
                      Icons.bolt_rounded,
                    ),
                    _buildStatCard(
                      'System Health',
                      '100%',
                      Icons.speed_rounded,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: const Color(0xFF4361EE)),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(fontSize: 14, color: Color(0xFF64748B)),
            ),
            const SizedBox(height: 6),
            Text(
              value,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
