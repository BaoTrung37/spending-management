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
                        'Money Manager',
                        style: AppTextStyles.headingSmall,
                      ),
                    ),
                  ),
                  Icon(Icons.calendar_month),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                    },
                    child: const Column(
                      children: [
                        Text(
                          '2023',
                          style: AppTextStyles.headingXXSmallLight,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Jun',
                          style: AppTextStyles.headingSmall,
                        ),
                      ],
                    ),
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
