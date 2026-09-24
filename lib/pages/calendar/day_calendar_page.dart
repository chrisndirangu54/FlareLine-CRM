import 'package:flutter/material.dart';
import 'package:donor_firebase/donor_firebase.dart';
import 'package:flareline_crm/pages/crm_layout.dart';

class DayCalendarPage extends CrmLayout {
  const DayCalendarPage({super.key});
  @override
  String breakTabTitle(BuildContext context) => 'Calendar events';
  @override
  Widget contentDesktopWidget(BuildContext context) => const FirebaseDonorPanel(
    title: 'Calendar events', appId: 'crm', collection: 'modules/crm/records', recordKind: 'calendar',
    fields: {'name': 'Event', 'startAt': 'Start (ISO date with timezone)', 'endAt': 'End (ISO date with timezone)', 'notes': 'Notes'}, readOnly: false,
  );
}
