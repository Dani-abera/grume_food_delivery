import 'package:flutter/material.dart';
import 'package:grume_food_delivery/component/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  Widget _bottomNavigationBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.onInverseSurface),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Daniel Abera'),
                Text('Driver'),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.onInverseSurface),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.onInverseSurface),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery In Progress ....'),
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
      body: Column(
        children: [MyReceipt()],
      ),
    );
  }
}
