import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/income/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card/my_cards_and_transction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransctionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
