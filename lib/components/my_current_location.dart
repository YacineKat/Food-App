import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: Text('Your Location',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Search address...',
              hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          actions: [
            // Cancel button
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
              ),
            ),
            // Save button
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Save',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
              ),
            ),
          ],),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver now',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // adress
                Text(
                  '7330 Tijdet Mostaganem',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // drop down menu
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
