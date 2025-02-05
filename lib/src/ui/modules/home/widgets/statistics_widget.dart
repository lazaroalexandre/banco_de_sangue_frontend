import 'package:banco_de_sangue/src/ui/modules/home/widgets/statistcs/candidate_age_blood_statistic.dart';
import 'package:banco_de_sangue/src/ui/modules/home/widgets/statistcs/candidate_by_state_statistic.dart';
import 'package:banco_de_sangue/src/ui/modules/home/widgets/statistcs/candidate_imc_by_age_statistic.dart';
import 'package:banco_de_sangue/src/ui/modules/home/widgets/statistcs/candidate_possible_donor_statistic.dart';
import 'package:banco_de_sangue/src/ui/modules/home/widgets/statistcs/candidate_sex_obsessed_statistic.dart';
import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CandidatePossibleDonorStatistic(),
          CandidateByStateStatistic(),
          CandidateAgeBloodStatistic(),
          CandidateSexObsessedStatistic(),
          CandidateImcByAgeStatistic(),
          const SizedBox(
            height: SizeToken.xl3,
          ),
        ],
      ),
    );
  }
}
