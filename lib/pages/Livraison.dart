import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Livraison extends StatefulWidget {
  const Livraison({super.key});

  @override
  State<Livraison> createState() => _LivraisonState();
}

class _LivraisonState extends State<Livraison> {
  final List<String> _dropdownItems = ['Item 1', 'Item 2', 'Item 3'];
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      builder: (_, controller) => Container(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: SvgPicture.asset(
                    "assets/Rectangle.svg",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Date de livraison',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Rale',
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonRow(),
                  ],
                ),
                SizedBox(height: 60),
                Text(
                  'Adresse',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Rale',
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: DropdownButton(
                    hint: Text('Select an item'),
                    items: _dropdownItems.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedItem = newValue;
                      });
                    },
                    value: _selectedItem,
                    icon: const Icon(Icons.keyboard_arrow_down),
                  ),
                ),
              ],
            ),
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
        margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.green : Colors.black,
            width: 3.0,
          ),
        ),
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontFamily: 'Rale',
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildItem('Aujoud\'hui, 20 juin 15:00'),
        buildItem('Demain 21 juin, 11:00'),
        buildItem('27 juin,\n10:00'),
      ],
    );
  }
}
