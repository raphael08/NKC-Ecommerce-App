import 'package:flutter/material.dart';
//import 'package:nkc/square.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final List<String> _locations = [
    'Tanzania',
    'Uganda',
    'Kenya',
    'Rwanda',
    'Botswana',
    'Mozambique'
  ]; // Option 2
  String _selectedLocation = 'Tanzania';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff044861),
            elevation: 2,
            title: const Center(child: Text('ADDRESS')),
            leading: IconButton(
                onPressed: () {
                  //back to previous page
                },
                icon: const Icon(Icons.arrow_back)),
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Badge(
                      badgeContent: const Text('3',
                          style: TextStyle(color: Colors.white)),
                      position: BadgePosition.topEnd(top: 1, end: 3),
                      child: IconButton(
                          onPressed: () {
                            //Go to cart
                          },
                          icon: const Icon(Icons.shopping_cart_outlined))))
            ],
          ),
          body: Column(
            children: [
              //const StepperWidget(),
              Container(
                height: 250,
                width: double.infinity,
                color: const Color.fromARGB(20, 4, 72, 97),
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.radio_button_checked_outlined,
                            color: Color(0xff044861),
                            size: 20,
                          ),
                        ),
                        const Text('Deliver to doorstep')
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.92,
                          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          decoration: BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.black)),
                            //color: Colors.white,
                          ),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              //alignedDropdown: true,
                              child: DropdownButton(
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                hint: const Text('Please choose a country'),
                                value: _selectedLocation,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedLocation = newValue!;
                                  });
                                },
                                items: _locations.map((location) {
                                  return DropdownMenuItem(
                                    child: Text(location),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 350,
                color: const Color.fromARGB(20, 4, 72, 97),
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.radio_button_checked_outlined,
                            color: Color.fromARGB(255, 196, 196, 196),
                            size: 20,
                          ),
                        ),
                        const Text('Self-pick')
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            border: Border(),
                            color: Colors.white,
                          ),
                          child: DropdownButton(
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            hint: const Text(
                                'Please choose a country'), // Not necessary for Option 1
                            value: _selectedLocation,
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedLocation = newValue!;
                              });
                            },
                            items: _locations.map((location) {
                              return DropdownMenuItem(
                                child: Text(location),
                                value: location,
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
