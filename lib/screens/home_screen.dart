import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';
import '../widgets/action_buttons.dart';
import '../widgets/transaction_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Neon Wallet")),
      body: ListView(
        children: const [
          BalanceCard(),
          SizedBox(height: 10),
          ActionButtons(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Recent Transactions',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          SizedBox(height: 10),
          TransactionTile(
            title: 'Sent to Netflix',
            date: 'May 19, 2025',
            amount: '\$12.99',
            isIncome: false,
          ),
          TransactionTile(
            title: 'Received from John',
            date: 'May 18, 2025',
            amount: '\$100.00',
            isIncome: true,
          ),
          TransactionTile(
            title: 'Paid to Uber',
            date: 'May 17, 2025',
            amount: '\$8.50',
            isIncome: false,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1A1A1A),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Scan'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
