import '/utils/field_val.dart';
import 'package:flutter/material.dart';

class DatePickerTextField extends StatefulWidget {
  const DatePickerTextField({super.key});

  @override
  _DatePickerTextFieldState createState() => _DatePickerTextFieldState();
}

class _DatePickerTextFieldState extends State<DatePickerTextField> {
  final TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1975),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      final String formattedDate =
          "${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}";
      setState(() {
        _dateController.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TxtField(
      labelText: "Time",
      fillColor: Colors.white,
      controller: _dateController,
      suffixIcon: const Icon(Icons.calendar_today),
      validator: validateField,
      border: false,
      onTap: () {
        _selectDate(context);
      },
    );
  }
}

class CusTimePicker extends StatefulWidget {
  const CusTimePicker({super.key});

  @override
  _CusTimePickerState createState() => _CusTimePickerState();
}

class _CusTimePickerState extends State<CusTimePicker> {
  TimeOfDay? selectedTime;
  TextEditingController timeController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
        final formattedTime = picked.format(context);
        timeController.text = formattedTime;
      });
    }
  }

  @override
  void dispose() {
    timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TxtField(
      labelText: "Date",
      fillColor: Colors.white,
      controller: timeController,
      suffixIcon: const Icon(Icons.access_time),
      validator: validateField,
      border: false,
      onTap: () {
        _selectTime(context);
      },
    );
  }
}
