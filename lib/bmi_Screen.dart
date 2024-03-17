import 'dart:math';

import 'package:bmi_app/BMI_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget 
{
  const BmiScreen({super.key});

  
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> 
{

  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text('BMI CALCULATE',
        ),
      ),
      body: Column(
        children: 
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: 
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.blue : Colors.grey[400],
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              height: 80.0,
                              width: 80.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.grey[400] : Colors.blue,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              height: 80.0,
                              width: 80.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
     
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                ),
              child: Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                    'HEIGHT',
                     style: TextStyle(
                     fontSize: 25.0,
                     fontWeight: FontWeight.bold,
                    ),
                  ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                    '${height.round()}',
                     style: const TextStyle(
                     fontSize: 40.0,
                     fontWeight: FontWeight.w900,
                     
                    ),
                  ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Text(
                    'CM',
                     style: TextStyle(
                     fontSize: 25.0,
                     fontWeight: FontWeight.bold,
                     
                    ),
                  ),
                      ],
                    ),
                    Slider(
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value)
                          {
                            setState(() 
                            {
                              height = value;
                            });
                            print(value.round());
                          },
                          ),
                  ],
                ),
              ),
            ),
        ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         const Text(
                          'weight',
                           style: TextStyle(
                           fontSize: 25.0,
                           fontWeight: FontWeight.bold,
                          ),
                        ),
                         Text(
                          '${weight.round()}',
                           style: const TextStyle(
                           fontSize: 40.0,
                           fontWeight: FontWeight.w900,
                           
                          ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(
                              onPressed: ()
                              {
                                setState(() {
                                  weight--;
                                });
                              },
                              heroTag: 'weight-',
                              mini: true,
                              elevation: 0.0,
                              child: const Icon(Icons.remove),
                              ),
                             FloatingActionButton(
                              onPressed: ()
                              {
                                setState(() {
                                  weight++;
                                });
                              },
                              heroTag: 'weight+',
                              mini: true,
                              elevation: 0.0,
                              child: const Icon(Icons.add),
                              ),
                           ],
                         ),
                        
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         const Text(
                          'age',
                           style: TextStyle(
                           fontSize: 25.0,
                           fontWeight: FontWeight.bold,
                          ),
                        ),
                         Text(
                          '${age.round()}',
                           style: const TextStyle(
                           fontSize: 40.0,
                           fontWeight: FontWeight.w900,
                           
                          ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(
                              onPressed: ()
                              {
                                setState(() {
                                  age--;
                                });
                              },
                              heroTag: 'age-',
                              mini: true,
                              elevation: 0.0,
                              child: const Icon(Icons.remove),
                              ),
                             FloatingActionButton(
                              onPressed: ()
                              {
                                setState(() {
                                  age++;
                                });
                              },
                              heroTag: 'age+',
                              mini: true,
                              elevation: 0.0,
                              child: const Icon(Icons.add),
                              ),
                           ],
                         ),
                        
                        ],
                      ),
                    ),
                  ),
                
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Container(
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.0,),
              color: Colors.blue, 
              ),
              
              width: double.infinity,
              child: MaterialButton(
                height: 50.0,
                onPressed: ()
                {
                  var result = weight / pow(height/100, 2);
                  print (result.round());

                  Navigator.push(
                    context,
                     MaterialPageRoute(
                      builder: (context) => BmiResultScreen(
                        age: age,
                        isMale: isMale,
                        result: result.round(),
                      ),
                      ),
                      );
                },
                child: const Text('CALCULATE',
                style: TextStyle(
                  color: Colors.white,


                ),
                ),
                ),
            ),
          ),
        ],
      ),
    );
  }

  // var result = weight / pow(height/100, 2);
  // print (result.round());

}