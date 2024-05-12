import 'package:due_kasir/controller/report_controller.dart';
import 'package:due_kasir/utils/date_utils.dart';
import 'package:due_kasir/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:signals/signals_flutter.dart';

class ReportVisitors extends StatelessWidget {
  const ReportVisitors({super.key});

  @override
  Widget build(BuildContext context) {
    final reportIncome = reportController.reportIncome.watch(context);
    return ShadCard(
      width: context.isTablet
          ? context.width / 2
          : context.isMobile
              ? context.width
              : context.width / 3.5,
      title: const Text('Total Visitors'),
      description: const Text('How many people come to buy'),
      content: Column(
        children: [
          const SizedBox(height: 16),
          if (reportIncome.hasValue)
            for (var i in reportIncome.value!.entries.take(10))
              Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(dateWithoutTime.format(i.key)),
                    trailing: Text('${i.value.length} People',
                        style: ShadTheme.of(context).textTheme.muted),
                  ),
                  const Divider()
                ],
              )
        ],
      ),
    );
  }
}
