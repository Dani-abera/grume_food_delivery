import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('You\'r Location'),
              content: TextField(
                decoration: const InputDecoration(hintText: 'Search address'),
              ),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'),
                ),
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Save'),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Deliver now'),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //address
                Text('bati 0923'),
                //drop down menu
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}
