import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget 
{
  final int result;
  final bool isMale;
  final int age;

  const BmiResultScreen({super.key, 
  required this.result,
  required this.age,
  required this.isMale,
  });

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () 
          {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new)) ,
        title: const Text(
          'BMI Result'
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result : $result',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}