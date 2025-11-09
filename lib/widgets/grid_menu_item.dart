import 'package:flutter/material.dart';

class GridMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const GridMenuItem({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap ?? () {},
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFFFF4F8), // lembut banget (putih ke pink muda)
              Color(0xFFFBE7FF), // lavender pastel
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.pinkAccent.withOpacity(0.06),
              blurRadius: 8,
              offset: const Offset(2, 4),
            ),
          ],
          border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ===== Ikon bulat =====
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFF8BBD0), // soft pink
                    Color(0xFFE1BEE7), // soft lavender
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pinkAccent.withOpacity(0.15),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(
                icon,
                size: 24, // sedikit dikecilin biar pas di layar kecil
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),

            // ===== Label =====
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13.5, // dikecilin biar grid gak keliatan padat
                color: Color(0xFF6A1B9A),
                letterSpacing: 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
