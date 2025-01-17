import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:grume_food_delivery/component/my_button.dart';

import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // Payment method

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      // show dialog is validate
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Conform Payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('CardNumber: $cardNumber'),
                Text('ExpiryDate: $expiryDate'),
                Text('Card Holder Name: $cardHolderName'),
                Text('Cvv: $cvvCode'),
              ],
            ),
          ),
          actions: [
            // cancel button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            //yes Button
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DeliveryProgressPage(),
                    ),
                  );
                },
                child: Text('Yes'))
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckOut'),
      ),
      body: Column(
        children: [
          // credit card
          CreditCardWidget(
            cardBgColor: Theme.of(context).colorScheme.secondary,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
          ),
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
              },
              formKey: formKey),
          Spacer(),
          MyButton(
              text: 'Pay Now',
              onPressed: () {
                userTappedPay();
              }),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
