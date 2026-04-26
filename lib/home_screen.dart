import 'package:flutter/material.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFE9F2FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.account_balance_wallet_rounded, color: Color(0xFF007AFF), size: 28),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mening Hisobim',
                  style: TextStyle(color: Color(0xFF1A1C1E), fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Xush kelibsiz, Shahroz',
                  style: TextStyle(color: Color(0xFF6C757D), fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_none_rounded, color: Color(0xFF1A1C1E), size: 28),
                onPressed: () {},
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Marquee or dynamic line
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8),
              color: const Color(0xFFE9F2FF).withOpacity(0.5),
              child: const Row(
                children: [
                  SizedBox(width: 16),
                  Text(
                    'Real-time tranzaksiyalar • Valyuta konvertatsiyasi • Investitsiya imkoniyatlari',
                    style: TextStyle(color: Color(0xFF007AFF), fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Bank Kartalari Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Bank kartalari', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E))),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Text('Qo\'shish', style: TextStyle(color: Color(0xFF007AFF), fontWeight: FontWeight.bold)),
                    label: const Icon(Icons.add_circle, color: Color(0xFF007AFF), size: 20),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 12),
            
            // Horizontal Cards
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                physics: const BouncingScrollPhysics(),
                children: [
                  _buildBankCard(
                    balance: '12,450,000 UZS',
                    cardNumber: '**** **** **** 4582',
                    owner: 'AZIZBEK TOHIROV',
                    gradient: const [Color(0xFF4158D0), Color(0xFFC850C0)],
                  ),
                  _buildBankCard(
                    balance: '850,000 UZS',
                    cardNumber: '**** **** **** 1120',
                    owner: 'AZIZBEK TOHIROV',
                    gradient: const [Color(0xFF0093E9), Color(0xFF80D0C7)],
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Action Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildActionButton(Icons.swap_horiz_rounded, 'O\'tkazmalar'),
                  _buildActionButton(Icons.qr_code_scanner_rounded, 'To\'lov'),
                  _buildActionButton(Icons.history_rounded, 'Tarix'),
                  _buildActionButton(Icons.more_horiz_rounded, 'Ko\'proq'),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Investitsiya portfeli Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Investitsiya portfeli', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E))),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Tahlil', style: TextStyle(color: Color(0xFF007AFF), fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 20, offset: const Offset(0, 10))],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Umumiy aktivlar', style: TextStyle(color: Color(0xFF6C757D), fontSize: 13)),
                          const SizedBox(height: 4),
                          const Text('\$4,250.80', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E))),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(color: const Color(0xFFE8F5E9), borderRadius: BorderRadius.circular(8)),
                            child: const Row(
                              children: [
                                Icon(Icons.trending_up_rounded, color: Color(0xFF2E7D32), size: 14),
                                SizedBox(width: 4),
                                Text('+12.5%', style: TextStyle(color: Color(0xFF2E7D32), fontWeight: FontWeight.bold, fontSize: 12)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Mock Chart Bars
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _buildChartBar(30), _buildChartBar(50), _buildChartBar(40), _buildChartBar(70), _buildChartBar(85),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  _buildInvestmentItem(
                    'Kriptovalyuta', 'BTC, ETH', '\$1,240.00', '+5.2%', Colors.orange.shade100, Icons.currency_bitcoin_rounded,
                  ),
                  _buildInvestmentItem(
                    'Aksiyalar', 'Apple, Tesla', '\$2,450.50', '+8.4%', Colors.blue.shade100, Icons.trending_up_rounded,
                  ),
                  _buildInvestmentItem(
                    'Oltin', 'MyGold xizmati', '\$560.30', '-1.2%', Colors.yellow.shade100, Icons.savings_rounded,
                    isPositive: false,
                  ),
                  const SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      side: const BorderSide(color: Color(0xFFE9ECEF)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('To\'liq portfelni ko\'rish', style: TextStyle(color: Color(0xFF6C757D), fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Kredit va qarzlar Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Kredit va qarzlar', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E))),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: _buildKreditCard(
                      'Mikroqarz', '2.5 mln UZS', 'To\'lov muddati: 15-Okt', const Color(0xFFFFEBEE), Colors.red.shade700,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildKreditCard(
                      'Kredit limiti', '10 mln UZS', '', const Color(0xFFE3F2FD), Colors.blue.shade700,
                      progress: 0.6,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF007AFF),
        shape: const CircleBorder(),
        elevation: 8,
        child: const Icon(Icons.qr_code_scanner_rounded, color: Colors.white, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBottomNavIcon(Icons.home_rounded, 'Asosiy', true),
            _buildBottomNavIcon(Icons.pie_chart_rounded, 'Monitoring', false),
            const SizedBox(width: 40), // Space for FAB
            _buildBottomNavIcon(Icons.account_balance_wallet_rounded, 'To\'lovlar', false),
            _buildBottomNavIcon(Icons.person_rounded, 'Profil', false),
          ],
        ),
      ),
    );
  }

  Widget _buildBankCard({required String balance, required String cardNumber, required String owner, required List<Color> gradient}) {
    return Container(
      width: 320,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(colors: gradient, begin: Alignment.topLeft, end: Alignment.bottomRight),
        boxShadow: [BoxShadow(color: gradient[0].withOpacity(0.3), blurRadius: 15, offset: const Offset(0, 8))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Joriy balans', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  Text(balance, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                ],
              ),
              const Icon(Icons.wifi_rounded, color: Colors.white, size: 24),
            ],
          ),
          const Spacer(),
          Text(cardNumber, style: const TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 2)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('EGASI', style: TextStyle(color: Colors.white70, fontSize: 10)),
                  Text(owner, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                ],
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/1200px-MasterCard_Logo.svg.png',
                height: 30,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.credit_card, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 10)],
          ),
          child: Icon(icon, color: const Color(0xFF007AFF), size: 28),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF495057))),
      ],
    );
  }

  Widget _buildInvestmentItem(String title, String subtitle, String amount, String change, Color color, IconData icon, {bool isPositive = true}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Icon(icon, color: Colors.brown.shade800, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(subtitle, style: const TextStyle(color: Color(0xFF6C757D), fontSize: 12)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(
                change,
                style: TextStyle(color: isPositive ? const Color(0xFF2E7D32) : const Color(0xFFD32F2F), fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChartBar(double height) {
    return Container(
      width: 12,
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: const Color(0xFF007AFF).withOpacity(0.3),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _buildKreditCard(String title, String amount, String sub, Color bgColor, Color textColor, {double? progress}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE9ECEF)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8)),
                child: Icon(progress == null ? Icons.account_balance_rounded : Icons.credit_card_rounded, color: textColor, size: 20),
              ),
              if (progress == null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(color: const Color(0xFFFFEBEE), borderRadius: BorderRadius.circular(4)),
                  child: const Text('AKTIV', style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.bold)),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text(title, style: const TextStyle(color: Color(0xFF6C757D), fontSize: 12)),
          Text(amount, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1E))),
          if (sub.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(sub, style: const TextStyle(color: Color(0xFFADB5BD), fontSize: 10)),
          ],
          if (progress != null) ...[
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: const Color(0xFFE9ECEF),
              valueColor: AlwaysStoppedAnimation<Color>(textColor),
              minHeight: 6,
              borderRadius: BorderRadius.circular(3),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildBottomNavIcon(IconData icon, String label, bool isActive) {
    return InkWell(
      onTap: () {
        if (label == 'Profil') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isActive ? const Color(0xFF007AFF) : const Color(0xFFADB5BD), size: 26),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: isActive ? const Color(0xFF007AFF) : const Color(0xFFADB5BD), fontSize: 10, fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
