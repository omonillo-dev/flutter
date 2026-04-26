import 'package:flutter/material.dart';
import 'verification_screen.dart';
import 'recovery_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // Logo
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFFF26522),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFF26522).withOpacity(0.3),
                      blurRadius: 25,
                      offset: const Offset(0, 12),
                    ),
                  ],
                ),
                child: const Icon(Icons.account_balance_rounded, color: Colors.white, size: 50),
              ),
              const SizedBox(height: 30),
              const Text(
                'Xush kelibsiz',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF1A1C1E),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Davom etish uchun tizimga kiring',
                style: TextStyle(color: Color(0xFF6C757D), fontSize: 16),
              ),
              const SizedBox(height: 40),
              
              // Telefon raqami
              _buildInputLabel('Telefon raqami'),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: _buildInputDecoration('+998 90 123 45 67', Icons.phone_android_rounded),
              ),
              
              const SizedBox(height: 24),
              
              // Parol
              _buildInputLabel('Parol'),
              const SizedBox(height: 8),
              TextField(
                obscureText: true,
                decoration: _buildInputDecoration('********', Icons.visibility_off_outlined),
              ),
              
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RecoveryScreen())),
                  child: const Text(
                    'Parolni unutdingizmi?',
                    style: TextStyle(color: Color(0xFFF26522), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Kirish Tugmasi
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationScreen())),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF26522),
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: 10,
                  shadowColor: const Color(0xFFF26522).withOpacity(0.4),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Kirish', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_rounded, color: Colors.white),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              const Row(
                children: [
                  Expanded(child: Divider(thickness: 1, color: Color(0xFFE9ECEF))),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('yoki', style: TextStyle(color: Color(0xFFADB5BD))),
                  ),
                  Expanded(child: Divider(thickness: 1, color: Color(0xFFE9ECEF))),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Biometrika tugmasi
              OutlinedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationScreen())),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 60),
                  side: const BorderSide(color: Color(0xFFDEE2E6), width: 1.5),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fingerprint_rounded, color: Color(0xFFF26522), size: 28),
                    SizedBox(width: 12),
                    Text('Biometrika bilan kirish', style: TextStyle(color: Color(0xFF1A1C1E), fontSize: 16, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Promo Card (XAVFSIZ BANK)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2D4432), Color(0xFF142116)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'XAVFSIZ BANK',
                      style: TextStyle(color: Colors.white60, fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 2),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Mablag\'laringiz doimo himoyada',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              
              const SizedBox(height: 32),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Hisobingiz yo\'qmi? ', style: TextStyle(color: Color(0xFF6C757D))),
                  TextButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen())),
                    child: const Text(
                      'Ro\'yxatdan o\'tish',
                      style: TextStyle(color: Color(0xFFF26522), fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputLabel(String label) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF495057), fontSize: 15),
      ),
    );
  }

  InputDecoration _buildInputDecoration(String hint, IconData icon) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Color(0xFFADB5BD)),
      suffixIcon: Icon(icon, color: const Color(0xFFADB5BD)),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Color(0xFFE9ECEF))),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Color(0xFFF26522), width: 2)),
    );
  }
}
