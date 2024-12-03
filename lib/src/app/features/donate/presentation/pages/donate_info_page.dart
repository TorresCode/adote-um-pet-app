import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../routes.dart';

part 'widgets/choose_pet_type_row.dart';
part 'widgets/choose_pet_gender_row.dart';
part 'widgets/choose_pet_donation_type_row.dart';
part 'widgets/choose_pet_size_row.dart';

class DonateInfoPage extends StatefulWidget {
  const DonateInfoPage({super.key});

  @override
  State<DonateInfoPage> createState() => _DonateInfoPageState();
}

class _DonateInfoPageState extends State<DonateInfoPage> {
  TextEditingController nomePetController = TextEditingController();
  TextEditingController racaPetController = TextEditingController();

  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawerDS(
        userName: 'Mariana Oliveira',
        userLocation: 'Sao Paulo - SP',
        userImage: AppImages.catChoose,
        onAdoptTap: () => router.go('/donate-info'),
        onAccountTap: () {},
        onDonateTap: () {},
        onPetinhaTap: () {},
        onMessagesTap: () {},
        onLogoutTap: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Bem vinda, ',
                  style: theme.textTheme.headlineSmall,
                  children: [
                    TextSpan(
                      text: 'Mariana!',
                      style: theme.textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              Text(
                'Ache um lar para o seu amigo peludo.',
                style: theme.textTheme.labelSmall,
              ),
              const Gap(20),
              Text(
                'Qual o nome do seu pet?',
                style: theme.textTheme.titleSmall,
              ),
              const Gap(10),
              TextInputGrayDs(
                controller: nomePetController,
              ),
              const Gap(12),
              _ChoosePetTypeRow(),
              const Gap(12),
              _ChoosePetGenderRow(),
              const Gap(12),
              _ChoosePetDonationTypeRow(),
              const Gap(12),
              _ChoosePetSizeRow(),
              const Gap(12),
              const AgeSlider(),
              const Gap(12),
              Text(
                'Raça',
                style: theme.textTheme.titleSmall,
              ),
              const Gap(8),
              TextInputGrayDs(
                controller: racaPetController,
                label: 'A raça do animal',
              ),
              const Gap(12),
              Text(
                'Seu endereço',
                style: theme.textTheme.titleSmall,
              ),
              const Gap(8),
              TextInputGrayDs(
                controller: racaPetController,
                label: 'Sua localização',
              ),
              const Gap(10),
              Center(
                child: FloatingActionButton(
                  onPressed: (){
                    context.go('/donate-img');
                  },
                  backgroundColor: AppColors.doarButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),  
                  child: const Icon(Icons.camera_alt_outlined, size: 40, color: Colors.white,),               
                ),
              ),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
