import 'package:flutter/material.dart';
import 'package:donor_firebase/donor_firebase.dart';
import 'package:flareline_crm/pages/crm_layout.dart';

class TasksPage extends CrmLayout {
  const TasksPage({super.key});
  @override
  String breakTabTitle(BuildContext context) => 'Tasks';
  @override
  Widget contentDesktopWidget(BuildContext context) => const FirebaseDonorPanel(
    title: 'Tasks', appId: 'crm', collection: 'modules/crm/records', recordKind: 'task',
    fields: {'name': 'Task', 'dueAt': 'Due time (ISO date with timezone)', 'status': 'Status: open, in_progress, completed, cancelled', 'notes': 'Notes'}, readOnly: false,
  );
}
