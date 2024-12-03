part of '../donate_info_page.dart';

class _ChoosePetDonationTypeRow extends StatefulWidget {
  @override
  State<_ChoosePetDonationTypeRow> createState() => ChoosePetDonationTypeRow();
}

class ChoosePetDonationTypeRow extends State<_ChoosePetDonationTypeRow> {
  Map<String, bool> buttonStates = {
    'temporario': true,
    'permanente': false,
  };

  void toggleSelection(String selected) {
    setState(() {
      buttonStates.updateAll((key, value) => false);

      buttonStates[selected] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tipo de doação',
          style: theme.textTheme.titleSmall,
        ),
        const Gap(8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SelectableButtonDs(
                width: 100,
                height: 30,
                isSelected: buttonStates['temporario']!,
                onPressed: () => toggleSelection('temporario'),
                title: 'Temporário',
              ),
              const Gap(10),
              SelectableButtonDs(
                width: 100,
                height: 30,
                isSelected: buttonStates['permanente']!,
                onPressed: () => toggleSelection('permanente'),
                title: 'Permanente',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
