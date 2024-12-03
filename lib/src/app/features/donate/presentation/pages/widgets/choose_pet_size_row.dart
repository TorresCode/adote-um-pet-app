part of '../donate_info_page.dart';

class _ChoosePetSizeRow extends StatefulWidget {
  @override
  State<_ChoosePetSizeRow> createState() => _ChoosePetSizeRowState();
}

class _ChoosePetSizeRowState extends State<_ChoosePetSizeRow> {
  Map<String, bool> buttonStates = {
    'pequeno': true,
    'medio': false,
    'grande': false,
    'enorme': false,
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
          'E o tamanho?',
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
                isSelected: buttonStates['pequeno']!,
                onPressed: () => toggleSelection('pequeno'),
                title: 'Pequeno',
              ),
              const Gap(10),
              SelectableButtonDs(
                width: 100,
                height: 30,
                isSelected: buttonStates['medio']!,
                onPressed: () => toggleSelection('medio'),
                title: 'Médio',
              ),
              const Gap(10),
              SelectableButtonDs(
                width: 100,
                height: 30,
                isSelected: buttonStates['grande']!,
                onPressed: () => toggleSelection('grande'),
                title: 'Grande',
              ),
              const Gap(10),
              SelectableButtonDs(
                width: 100,
                height: 30,
                isSelected: buttonStates['enorme']!,
                onPressed: () => toggleSelection('enorme'),
                title: 'Enorme',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
