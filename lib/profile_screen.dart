import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 60),
            // Profile Image & Name
            Center(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFF26522).withOpacity(0.2), width: 2),
                        ),
                        child: const CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage('https://img.freepik.com/free-photo/portrait-handsome-young-man-with-crossed-arms-isolated-white_231208-2751.jpg'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(color: Color(0xFFF26522), shape: BoxShape.circle),
                        child: const Icon(Icons.edit_rounded, color: Colors.white, size: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Aziz Rahimov',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E)),
                  ),
                  const Text(
                    '+998 90 123 45 67',
                    style: TextStyle(color: Color(0xFF6C757D), fontSize: 16),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Sections
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ASOSIY SOZLAMALAR',
                    style: TextStyle(color: Color(0xFFADB5BD), fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.2),
                  ),
                  const SizedBox(height: 12),
                  _buildProfileMenu(
                    icon: Icons.person_outline_rounded,
                    title: 'Shaxsiy ma\'lumotlar',
                    subtitle: 'Ism, familiya va kontaktlar',
                    color: const Color(0xFFE9F2FF),
                    iconColor: const Color(0xFF007AFF),
                  ),
                  _buildProfileMenu(
                    icon: Icons.shield_outlined,
                    title: 'Xavfsizlik',
                    subtitle: 'Biometrika, parolni o\'zgartirish',
                    color: const Color(0xFFFFF4E9),
                    iconColor: const Color(0xFFF26522),
                  ),
                  _buildProfileMenu(
                    icon: Icons.notifications_none_rounded,
                    title: 'Bildirishnomalar',
                    subtitle: 'Xabarlar va eslatmalar',
                    color: const Color(0xFFFFF1F1),
                    iconColor: const Color(0xFFD32F2F),
                  ),
                  
                  const SizedBox(height: 24),
                  const Text(
                    'ILOVA',
                    style: TextStyle(color: Color(0xFFADB5BD), fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.2),
                  ),
                  const SizedBox(height: 12),
                  _buildProfileMenu(
                    icon: Icons.language_rounded,
                    title: 'Ilova tili',
                    subtitle: 'O\'zbek tili tanlangan',
                    color: const Color(0xFFE9F2FF),
                    iconColor: const Color(0xFF007AFF),
                  ),
                  _buildProfileMenu(
                    icon: Icons.help_outline_rounded,
                    title: 'Yordam markazi',
                    subtitle: 'Savollar va qo\'llab-quvvatlash',
                    color: const Color(0xFFE8F5E9),
                    iconColor: const Color(0xFF2E7D32),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Logout Button
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                        (route) => false,
                      );
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEBEE),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout_rounded, color: Color(0xFFD32F2F)),
                          SizedBox(width: 12),
                          Text(
                            'Chiqish',
                            style: TextStyle(color: Color(0xFFD32F2F), fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBottomNavIcon(context, Icons.home_rounded, 'Asosiy', false),
            _buildBottomNavIcon(context, Icons.receipt_long_rounded, 'Buyurtmalar', false),
            const SizedBox(width: 40),
            _buildBottomNavIcon(context, Icons.shopping_cart_outlined, 'Savat', false),
            _buildBottomNavIcon(context, Icons.person_rounded, 'Profil', true),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileMenu({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required Color iconColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10)],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, color: iconColor, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E))),
                Text(subtitle, style: const TextStyle(color: Color(0xFF6C757D), fontSize: 12)),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFFADB5BD), size: 16),
        ],
      ),
    );
  }

  Widget _buildBottomNavIcon(BuildContext context, IconData icon, String label, bool isActive) {
    return InkWell(
      onTap: () {
        if (label == 'Asosiy' && !isActive) Navigator.pop(context);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isActive ? const Color(0xFFF26522) : const Color(0xFFADB5BD), size: 26),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? const Color(0xFFF26522) : const Color(0xFFADB5BD),
              fontSize: 10,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
