import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const LessonCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
              ],
            ),
          ),
          Icon(icon, color: Colors.blue, size: 40),
        ],
      ),
    );
  }
}
