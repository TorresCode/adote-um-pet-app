import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../routes.dart';

class DonateImgPage extends StatefulWidget {
  const DonateImgPage({super.key});

  @override
  State<DonateImgPage> createState() => _DonateImgPageState();
}

class _DonateImgPageState extends State<DonateImgPage> {
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
        onAdoptTap: () => router.go('/donate-img'),
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
              Text(
                'Encontre o seu amigo peludo.',
                style: theme.textTheme.labelSmall,
              ),
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
              
              const Gap(10),
              Text(
                'Adicione algumas fotos do seu pet',
                style: theme.textTheme.titleSmall,
              ),
              const Gap(15),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 150,                          
                         decoration: BoxDecoration(
                            color: AppColors.inputGrayColor,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: const Icon(Icons.camera_alt, size: 100,color: Colors.black26,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 150,                          
                         decoration: BoxDecoration(
                            color: AppColors.inputGrayColor,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: const Icon(Icons.camera_alt, size: 100,color: Colors.black26,),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 150,                          
                         decoration: BoxDecoration(
                            color: AppColors.inputGrayColor,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: const Icon(Icons.camera_alt, size: 100,color: Colors.black26,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 150,                          
                         decoration: BoxDecoration(
                            color: AppColors.inputGrayColor,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: const Icon(Icons.camera_alt, size: 100,color: Colors.black26,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Gap(8),
              Text(
                'Descrição sobre o pet',
                style: theme.textTheme.titleSmall,
              ),
              const Gap(8),
              TextAreaInputGrayDs(
                controller: racaPetController,
                label: 'Sua localização',
              ),
              const Gap(20),
              PrimaryButtonDs(
                width: double.maxFinite,
                title: 'Visualizar doação',
                onPressed: () {
        
                },
              ),              
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
