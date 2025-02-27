import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/pages/delivery_progress_page.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentState();
}

class _PaymentState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;

  // Menambahkan TextEditingController untuk mengontrol expiryDate
  TextEditingController expiryDateController = TextEditingController();

  // user payment
  void userPayment() {
    if (formKey.currentState!.validate()) {
      // hanya tampilkan dialog yg form nya valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Confirm Payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder Name: $cardHolderName"),
                Text("CVV Code: $cvvCode"),
              ],
            ),
          ),
          actions: [
            // cancel button
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),

            // yes button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliveryProgressPage(),
                  ),
                );
              },
              child: Text("Yes"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: SingleChildScrollView(  // Memastikan scrollable
        child: Padding(
          padding: const EdgeInsets.all(16.0),  // Menambah padding untuk menghindari overlap
          child: Column(
            children: [
              // kartu kredit
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: showBackView,
                onCreditCardWidgetChange: (p0) {},
              ),
              
              // FORM KARTU KREDIT
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                formKey: formKey,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;  // Pastikan expiryDate diperbarui dengan benar
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                    // Perbarui controller expiryDate jika diperlukan
                    expiryDateController.text = data.expiryDate;
                  });
                },
              ),

              SizedBox(height: 10),

              MyButton(
                text: "Pay Now", 
                onTap: userPayment
              ),

              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
