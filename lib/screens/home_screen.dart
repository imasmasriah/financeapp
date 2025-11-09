import 'package:flutter/material.dart';
import '../widgets/atm_card.dart';
import '../widgets/transaction_item.dart';
import '../models/transaction.dart';
import '../widgets/grid_menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      TransactionModel('Coffee Shop', '-Rp35.000', 'Food'),
      TransactionModel('Grab Ride', '-Rp25.000', 'Travel'),
      TransactionModel('Gym Membership', '-Rp150.000', 'Health'),
      TransactionModel('Movie Ticket', '-Rp60.000', 'Event'),
      TransactionModel('Salary', '+Rp5.000.000', 'Income'),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F9), // 🌸 Latar lembut
      appBar: AppBar(
        title: const Text(
          'Finance Mate',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFF4D9DF),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Color(0xFF6A4C4C),
              size: 26,
            ),
            onPressed: () {
              // nanti bisa diarahkan ke halaman notifikasi
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Header =====
            const Text(
              'Welcome Back 👋',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF555555),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Your Smart Finance Dashboard',
              style: TextStyle(fontSize: 14, color: Color(0xFF9E9E9E)),
            ),
            const SizedBox(height: 24),

            // ===== My Cards =====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'My Cards',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF444444),
                  ),
                ),
                Icon(Icons.more_horiz, color: Color(0xFF888888)),
              ],
            ),
            const SizedBox(height: 12),

            SizedBox(
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  AtmCard(
                    bankName: 'Bank Sakura',
                    cardNumber: '**** 2345',
                    balance: 'Rp12.500.000',
                    color1: Color(0xFFD4A5A5),
                    color2: Color(0xFFFFC1D9),
                  ),
                  AtmCard(
                    bankName: 'Bank Cherry',
                    cardNumber: '**** 8765',
                    balance: 'Rp5.350.000',
                    color1: Color(0xFF9E9E9E),
                    color2: Color(0xFFD4A5A5),
                  ),
                  AtmCard(
                    bankName: 'Bank Blossom',
                    cardNumber: '**** 6721',
                    balance: 'Rp8.200.000',
                    color1: Color(0xFFBCAAA4),
                    color2: Color(0xFFFFC1D9),
                  ),
                  AtmCard(
                    bankName: 'Bank Rose',
                    cardNumber: '**** 1199',
                    balance: 'Rp3.950.000',
                    color1: Color(0xFFD7CCC8),
                    color2: Color(0xFFF8BBD0),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // ===== Quick Access =====
            const Text(
              'Quick Access',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF444444),
              ),
            ),
            const SizedBox(height: 12),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              childAspectRatio: 2.2, // 💖 lebih kecil, tampil imut & elegan
              children: const [
                GridMenuItem(icon: Icons.health_and_safety, label: 'Health'),
                GridMenuItem(icon: Icons.travel_explore, label: 'Travel'),
                GridMenuItem(icon: Icons.fastfood, label: 'Food'),
                GridMenuItem(icon: Icons.event, label: 'Event'),
              ],
            ),

            const SizedBox(height: 28),

            // ===== Transaction List =====
            const Text(
              'Recent Transactions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF444444),
              ),
            ),
            const SizedBox(height: 12),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  return TransactionItem(transaction: transactions[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
