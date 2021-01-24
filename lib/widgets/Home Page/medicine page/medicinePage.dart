import 'package:flutter/material.dart';
import 'package:health_app/widgets/Home%20Page/local%20widgets/header.dart';
import 'package:health_app/widgets/Home%20Page/medicine%20page/medicineConatiner.dart';

class MedicinePage extends StatelessWidget {
  const MedicinePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Header(
          headline: "Click on medicine\nfor dosage",
        ),
        Positioned(
          top: size.height * 0.32,
          child: Column(
            children: [
              MedicineConatiner(
                medicineName: "CROCIN PAIN RELIEF",
                directionsForUse:
                    "Do not exceed stated dose. If symptoms persist, seek medical advice. Not suitable for children under the age of 12 years.",
                price: "56",
                key: Key("valuedw"),
              ),
              MedicineConatiner(
                medicineName: "CROCIN PAIN RELIEF",
                directionsForUse:
                    "Do not exceed stated dose. If symptoms persist, seek medical advice. Not suitable for children under the age of 12 years.",
                price: "56",
                key: Key("valuedw123"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
