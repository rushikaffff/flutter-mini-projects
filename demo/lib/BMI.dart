import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();

  double bmi = 0;
  String result = "";

  void calculateBMI()
  {
    double w = double.parse(weight.text);
    double h = double.parse(height.text);

    // Convert cm to meter
    h = h / 100;

    setState(() {

      bmi = w / (h * h);

      // BMI Conditions
      if(bmi < 18.5)
      {
        result = "Underweight";
      }
      else if(bmi >= 18.5 && bmi < 25)
      {
        result = "Normal Weight";
      }
      else if(bmi >= 25 && bmi < 30)
      {
        result = "Overweight";
      }
      else
      {
        result = "Obese";
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: weight,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Weight (kg)",
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: height,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Height (cm)",
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                calculateBMI();
              },
              child: const Text("Calculate BMI"),
            ),

            const SizedBox(height: 20),

            Text(
              "BMI = ${bmi.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              result,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}