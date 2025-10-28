import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/my_recipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery Progress"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
      body: Column(
        children: [MyRecipt()],
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
    );
  }
}
