import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expensess.dart';
import 'package:responsive_dashboard/widgets/qick_invoice/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
