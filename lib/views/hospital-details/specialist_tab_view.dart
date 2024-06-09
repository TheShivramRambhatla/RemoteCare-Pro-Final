import 'package:flutter/material.dart';

import '../../resources/components/doctor_card_widget.dart';
import '../../resources/data/data.dart';
import '../../utils/routes/route_names.dart';

class SpecialistTabViewInHospitalDetailsView extends StatelessWidget {
  const SpecialistTabViewInHospitalDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Specialist",
                style: Theme.of(context).textTheme.titleLarge!,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                "(${DataClass.doctorData.length})",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ],
          ),
          for (int i = 0; i < DataClass.doctorData.length; i++) ...[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.doctorDetailsView);
              },
              child: DoctorCardWidget(
                  name: DataClass.doctorDataNRI[i]['name'],
                  image: DataClass.doctorDataNRI[i]['image'],
                  rating: DataClass.doctorDataNRI[i]['rating'],
                  reviews: DataClass.doctorDataNRI[i]['reviews'],
                  spacialist: DataClass.doctorDataNRI[i]['spacialist']),
            ),
            const SizedBox(
              height: 6,
            )
          ],
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
