import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 220,
        leading: TextButton.icon(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_rounded, color: Color(0xFF1A1C1E)),
          label: const Text(
            'Login sahifasiga qaytish',
            style: TextStyle(color: Color(0xFF1A1C1E), fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              // Icon
              Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: const Color(0xFFF26522).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Icon(Icons.lock_reset_rounded, color: Color(0xFFF26522), size: 45),
              ),
              const SizedBox(height: 35),
              const Text(
                'Parolni tiklash',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF1A1C1E),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Tasdiqlash kodini olish uchun telefon raqamingizni kiriting. Biz sizga 6 xonali kodni SMS orqali yuboramiz.',
                style: TextStyle(color: Color(0xFF6C757D), fontSize: 16, height: 1.6),
              ),
              const SizedBox(height: 45),
              const Text(
                'Telefon raqami',
                style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF495057), fontSize: 15),
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    child: Text('+998', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E))),
                  ),
                  hintText: ' (__) ___ __ __',
                  hintStyle: const TextStyle(color: Color(0xFFADB5BD)),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Color(0xFFE9ECEF))),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Color(0xFFF26522), width: 2)),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF26522),
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: 8,
                  shadowColor: const Color(0xFFF26522).withOpacity(0.3),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Kodni yuborish', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(width: 12),
                    Icon(Icons.send_rounded, color: Colors.white, size: 20),
                  ],
                ),
              ),
              const SizedBox(height: 100), // Scrolling uchun bo'sh joy
              Center(
                child: Column(
                  children: [
                    const Text(
                      'Muammolar yuzaga kelsa qo\'llab-quvvatlash',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF6C757D), fontSize: 14),
                    ),
                    const Text(
                      'markaziga murojaat qiling',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF6C757D), fontSize: 14),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFF26522).withOpacity(0.2)),
                      ),
                      child: const Text(
                        'Yordam xizmati: 1212',
                        style: TextStyle(color: Color(0xFFF26522), fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
