import 'package:flutter/material.dart';
import 'package:pending_management/presentation/resources/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Align(
                      child: Text(
                        'Sổ thu chi',
                        style: AppTextStyles.headingSmall,
                      ),
                    ),
                  ),
                  Icon(Icons.calendar_month),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2021),
                            lastDate: DateTime(2023),
                            initialDatePickerMode: DatePickerMode.year,
                            currentDate: DateTime.now(),
                          );
                        },
                        child: const Text('2023'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
