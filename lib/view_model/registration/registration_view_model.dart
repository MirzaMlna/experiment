import 'package:flutter/material.dart';

class RegistrationViewModel with ChangeNotifier {
  final TextEditingController dateController = TextEditingController();

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;

  Future<void> selectDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1950, 1, 1),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      _selectedDate = pickedDate;
      dateController.text = pickedDate.toString().split(' ')[0];
      notifyListeners();
    }
  }
}
