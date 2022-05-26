import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? greeting;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Elevated Button
              ElevatedButton(
                  onPressed: (){
                    // eksekusi kode yang diinginkan ketika tombol ditekan
                  },
                  child: const Text(
                      "Tombol"
                  )
              ),

              const SizedBox(
                height: 20,
              ),
              //DropDown

              //Dropdown Button
              DropdownButton(
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    value: 'morning',
                    child: Text('Good Morning'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'afternoon',
                    child: Text('Good Afternoon'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'night',
                    child: Text('Good Night'),
                  ),
                ],
                onChanged: (String? value){
                  setState(() {
                    greeting = value;
                  });
                },
                value: greeting,
                hint: Text('Select greeting'),
              ),

              SizedBox(
                height: 20,
              ),

              IconButton(
                onPressed: (){
                  // eksekusi kode yang diinginkan ketika tombol ditekan
                },
                icon: Icon(Icons.camera)
              )

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => {
            // eksekusi kode yang diinginkan ketika tombol ditekan
          },
        ),
      ),
    );
  }
}