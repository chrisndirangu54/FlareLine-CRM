import 'package:flutter/material.dart';
import 'package:donor_firebase/donor_firebase.dart';
import 'package:flareline_crm/pages/crm_layout.dart';

class DealsPage extends CrmLayout {
  const DealsPage({super.key});
  @override
  String breakTabTitle(BuildContext context) => 'Deals';
  @override
  Widget contentDesktopWidget(BuildContext context) => const FirebaseDonorPanel(
    title: 'Deals', appId: 'crm', collection: 'modules/crm/records', recordKind: 'deal',
    fields: {'name': 'Deal name', 'contactId': 'Contact ID', 'valueMinor': 'Value in minor currency units', 'stage': 'Stage: lead, qualified, proposal, won, lost'}, readOnly: false,
  );
}
