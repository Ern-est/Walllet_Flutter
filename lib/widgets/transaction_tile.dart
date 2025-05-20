import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final bool isIncome;

  const TransactionTile({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    this.isIncome = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        isIncome ? Icons.arrow_downward : Icons.arrow_upward,
        color: isIncome ? Colors.greenAccent : Colors.redAccent,
      ),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      subtitle: Text(date, style: const TextStyle(color: Colors.white60)),
      trailing: Text(
        "${isIncome ? "+" : "-"}$amount",
        style: TextStyle(
          color: isIncome ? Colors.greenAccent : Colors.redAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
