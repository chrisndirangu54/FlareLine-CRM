import 'package:flutter/material.dart';
import 'package:donor_firebase/donor_firebase.dart';
import 'package:flareline_crm/pages/crm_layout.dart';

class ReportPage extends CrmLayout {
  const ReportPage({super.key});
  @override
  String breakTabTitle(BuildContext context) => 'Pipeline report';
  @override
  Widget contentDesktopWidget(BuildContext context) => const FirebaseDonorPanel(
    title: 'Pipeline report', appId: 'crm', collection: 'modules/crm/records', recordKind: 'deal',
    fields: {'name': 'Deal', 'contactId': 'Contact ID', 'valueMinor': 'Value in minor units', 'stage': 'Stage'}, readOnly: true,
  );
}
