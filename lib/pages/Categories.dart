import 'package:bazar/pages/BookPage.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: GestureDetector(
                      child: Icon(
                        Icons.search,
                        size: 32.0,
                      ),
                      onTap: () => Navigator.pushNamed(context, '/SearchPage'),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Catégories',
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'Rale',
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 32.0,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.yellow,
                height: 60,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ButtonRow(),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return BookPage();
                              },
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [],
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      20.0,
                                    ), // Adjust the radius here
                                    child: Image.asset(
                                      'assets/ezgifcom.jpg',
                                      fit: BoxFit.cover,
                                      width: 170,
                                      height: 200,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 170,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'The Da Vinci Code',
                                      style: TextStyle(
                                        fontFamily: 'Rale',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0,
                                  ),
                                  Container(
                                    width: 170,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '500.00 DZ',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: 'Rale',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Adjust the radius here
                                  child: Image.asset(
                                    'assets/ezgifcom.jpg',
                                    fit: BoxFit.cover,
                                    width: 170,
                                    height: 200,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'The Da Vinci Code',
                                    style: TextStyle(
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '500.00 DZ',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [],
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Adjust the radius here
                                  child: Image.asset(
                                    'assets/ezgifcom.jpg',
                                    fit: BoxFit.cover,
                                    width: 170,
                                    height: 200,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'The Da Vinci Code',
                                    style: TextStyle(
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '500.00 DZ',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Adjust the radius here
                                  child: Image.asset(
                                    'assets/ezgifcom.jpg',
                                    fit: BoxFit.cover,
                                    width: 170,
                                    height: 200,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'The Da Vinci Code',
                                    style: TextStyle(
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '500.00 DZ',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [],
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Adjust the radius here
                                  child: Image.asset(
                                    'assets/ezgifcom.jpg',
                                    fit: BoxFit.cover,
                                    width: 170,
                                    height: 200,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'The Da Vinci Code',
                                    style: TextStyle(
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '500.00 DZ',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Adjust the radius here
                                  child: Image.asset(
                                    'assets/ezgifcom.jpg',
                                    fit: BoxFit.cover,
                                    width: 170,
                                    height: 200,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'The Da Vinci Code',
                                    style: TextStyle(
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Container(
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '500.00 DZ',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: 'Rale',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonRow extends StatefulWidget {
  @override
  _ButtonRowState createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  String selectedButton = '';

  void _onButtonPressed(String label) {
    setState(() {
      selectedButton = label;
    });
  }

  Widget buildItem(String label) {
    bool isSelected = selectedButton == label;
    return GestureDetector(
      onTap: () => _onButtonPressed(label),
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 8.0),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey,
                fontSize: isSelected ? 20.0 : 16.0,
                fontFamily: 'Rale',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildItem('Tout'),
        buildItem('Romans'),
        buildItem('Mystère'),
        buildItem('Science'),
        buildItem('Romantique'),
        buildItem('Fiction'),
      ],
    );
  }
}
