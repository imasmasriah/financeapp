import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionItem({super.key, required this.transaction});

  Color _getIconColor(String category) {
    switch (category.toLowerCase()) {
      case 'food':
        return const Color(0xFFF48FB1);
      case 'travel':
        return const Color(0xFF81D4FA);
      case 'health':
        return const Color(0xFF80CBC4);
      case 'event':
        return const Color(0xFFFFCC80);
      case 'income':
        return const Color(0xFFA5D6A7);
      default:
        return Colors.grey;
    }
  }

  IconData _getIcon(String category) {
    switch (category.toLowerCase()) {
      case 'food':
        return Icons.fastfood;
      case 'travel':
        return Icons.flight_takeoff;
      case 'health':
        return Icons.health_and_safety;
      case 'event':
        return Icons.event;
      case 'income':
        return Icons.attach_money;
      default:
        return Icons.receipt_long;
    }
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = _getIconColor(transaction.category);
    final amountColor = transaction.amount.startsWith('-')
        ? Colors.redAccent
        : const Color(0xFF2E7D32);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.pinkAccent.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            _getIcon(transaction.category),
            color: iconColor,
            size: 26,
          ),
        ),
        title: Text(
          transaction.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          transaction.category,
          style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
        ),
        trailing: Text(
          transaction.amount,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: amountColor,
          ),
        ),
      ),
    );
  }
}
