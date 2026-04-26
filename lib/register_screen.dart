import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1A1C1E)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Ro\'yxatdan o\'tish',
          style: TextStyle(color: Color(0xFF1A1C1E), fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              const Text(
                'Hisob yaratish',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1C1E),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Davom etish uchun ma\'lumotlaringizni kiriting va bank xizmatlaridan foydalaning.',
                style: TextStyle(color: Color(0xFF6C757D), fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 32),
              
              _buildLabel('To\'liq ism'),
              const SizedBox(height: 8),
              _buildTextField(
                hint: 'Ism va familiyangizni kiriting',
                icon: Icons.person_outline,
              ),
              
              const SizedBox(height: 20),
              _buildLabel('Telefon raqami'),
              const SizedBox(height: 8),
              _buildTextField(
                hint: '+998  (_ _) _ _ _  _ _  _ _',
                icon: Icons.phone_outlined,
              ),
              
              const SizedBox(height: 20),
              _buildLabel('Parol yaratish'),
              const SizedBox(height: 8),
              _buildTextField(
                hint: 'Kamida 8 ta belgi',
                icon: Icons.lock_outline,
                isPassword: true,
              ),
              
              const SizedBox(height: 24),
              Row(
                children: [
                  Checkbox(
                    value: _isAgreed,
                    onChanged: (value) => setState(() => _isAgreed = value!),
                    activeColor: const Color(0xFFF26522),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  const Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: 'Men ',
                        children: [
                          TextSpan(
                            text: 'Foydalanish shartlari',
                            style: TextStyle(color: Color(0xFFF26522), fontWeight: FontWeight.w600),
                          ),
                          TextSpan(text: ' va maxfiylik siyosatiga roziman.'),
                        ],
                      ),
                      style: TextStyle(color: Color(0xFF6C757D), fontSize: 14),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF26522),
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 4,
                  shadowColor: const Color(0xFFF26522).withOpacity(0.4),
                ),
                child: const Text(
                  'Ro\'yxatdan o\'tish',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Profilingiz bormi? ', style: TextStyle(color: Color(0xFF6C757D))),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      'Tizimga kirish',
                      style: TextStyle(color: Color(0xFFF26522), fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF1A1C1E), fontSize: 14),
    );
  }

  Widget _buildTextField({required String hint, required IconData icon, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFFADB5BD), fontSize: 15),
        prefixIcon: Icon(icon, color: const Color(0xFFADB5BD), size: 22),
        suffixIcon: isPassword ? const Icon(Icons.visibility_outlined, color: Color(0xFFADB5BD), size: 22) : null,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE9ECEF)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE9ECEF)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFF26522), width: 1.5),
        ),
      ),
    );
  }
}
