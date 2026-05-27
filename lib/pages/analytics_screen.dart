import 'package:flutter/material.dart';
import 'package:flutter_artist_dock_face/flutter_artist_dock_face.dart';

import '../layout/my_dock_face_screen.dart';

class AnalyticsScreen extends MyDockFaceScreen {
  const AnalyticsScreen({super.key}) : super(currentRoute: '/analytics');

  @override
  Widget buildMainContent({
    required BuildContext context,
    required DockFaceStyle dockFaceStyle,
  }) {
    return Scaffold(
      backgroundColor: dockFaceStyle.scaffoldBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Analytics Center',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F172A),
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Performance and analytical metrics overview',
                style: TextStyle(fontSize: 14, color: Color(0xFF64748B)),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: Card(
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
                      children: [
                        const Text(
                          'Recent Deployment System Logs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildLogItem(
                          'DockFace runtime workspace init completed',
                          '1 min ago',
                        ),
                        const Divider(height: 1, color: Color(0xFFF1F5F9)),
                        _buildLogItem(
                          'DockFaceStyle engine seeded successfully',
                          '5 mins ago',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogItem(String message, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          const Icon(
            Icons.info_outline_rounded,
            color: Color(0xFF4361EE),
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(fontSize: 13, color: Color(0xFF334155)),
            ),
          ),
          Text(
            time,
            style: const TextStyle(fontSize: 11, color: Color(0xFF94A3B8)),
          ),
        ],
      ),
    );
  }
}
