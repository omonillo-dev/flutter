import 'package:flutter/material.dart';
import 'home_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String _enteredCode = "";
  final int _codeLength = 4;

  void _onKeyTap(String key) {
    if (_enteredCode.length < _codeLength) {
      setState(() {
        _enteredCode += key;
      });

      // Agar kod to'liq kiritilgan bo'lsa, avtomatik Home sahifasiga o'tadi
      if (_enteredCode.length == _codeLength) {
        Future.delayed(const Duration(milliseconds: 300), () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (route) => false,
          );
        });
      }
    }
  }

  void _onDelete() {
    if (_enteredCode.isNotEmpty) {
      setState(() {
        _enteredCode = _enteredCode.substring(0, _enteredCode.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xFF1A1C1E)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Xavfsizlik va Tasdiqlash',
          style: TextStyle(color: Color(0xFF1A1C1E), fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 40),
            // Biometric Icon
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color(0xFF007AFF).withOpacity(0.05),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF007AFF).withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF007AFF), Color(0xFF0051FF)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Color(0xFF007AFF), blurRadius: 15, offset: Offset(0, 5))
                      ],
                    ),
                    child: const Icon(Icons.fingerprint_rounded, color: Colors.white, size: 45),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Biometrik autentifikatsiya',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E)),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45),
              child: Text(
                'Iltimos, shaxsingizni tasdiqlash uchun barmoq izidan yoki Face ID-dan foydalaning.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF6C757D), fontSize: 14, height: 1.6),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Yoki kodni kiriting',
              style: TextStyle(color: Color(0xFF1A1C1E), fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(height: 30),
            // OTP Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_codeLength, (index) {
                bool isFilled = index < _enteredCode.length;
                bool isCurrent = index == _enteredCode.length;
                
                return Container(
                  width: 65,
                  height: 75,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: isCurrent ? const Color(0xFF007AFF) : const Color(0xFFE9ECEF),
                      width: 2,
                    ),
                    boxShadow: isCurrent ? [BoxShadow(color: const Color(0xFF007AFF).withOpacity(0.1), blurRadius: 10)] : null,
                  ),
                  child: Center(
                    child: isFilled
                      ? Text(
                          _enteredCode[index],
                          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E)),
                        )
                      : isCurrent 
                        ? Container(width: 2, height: 25, color: const Color(0xFF007AFF)) // Cursor simulation
                        : null,
                  ),
                );
              }),
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Kod kelmadimi? ', style: TextStyle(color: Color(0xFF6C757D))),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _enteredCode = "";
                    });
                  },
                  child: const Text('Qayta yuborish', style: TextStyle(color: Color(0xFF007AFF), fontWeight: FontWeight.bold)),
                ),
                const Text(' (00:54)', style: TextStyle(color: Color(0xFFADB5BD), fontSize: 12)),
              ],
            ),
            const SizedBox(height: 20),
            // Numeric Keypad
            Container(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20, offset: Offset(0, -5))],
              ),
              child: Column(
                children: [
                  _buildKeypadRow(['1', '2', '3']),
                  _buildKeypadRow(['4', '5', '6']),
                  _buildKeypadRow(['7', '8', '9']),
                  _buildKeypadRow(['', '0', 'delete']),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKeypadRow(List<String> keys) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: keys.map((key) {
          if (key.isEmpty) return const SizedBox(width: 70);
          if (key == 'delete') {
            return InkWell(
              onTap: _onDelete,
              borderRadius: BorderRadius.circular(50),
              child: const SizedBox(width: 70, height: 50, child: Icon(Icons.backspace_outlined, color: Color(0xFF1A1C1E), size: 28)),
            );
          }
          return InkWell(
            onTap: () => _onKeyTap(key),
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              width: 70,
              height: 50,
              child: Center(
                child: Text(
                  key,
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1A1C1E)),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
