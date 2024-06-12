import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key, required this.text, required this.selected, this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: THelperFunctions.getColor(text) != null ? SizedBox()  : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: THelperFunctions.getColor(text) != null
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: THelperFunctions.getColor(text)!,
            )
          : null,
      shape: THelperFunctions.getColor(text) != null ?  CircleBorder() : null,
      backgroundColor: THelperFunctions.getColor(text) != null ? THelperFunctions.getColor(text) : null,
      labelPadding: THelperFunctions.getColor(text) != null ?  EdgeInsets.all(0) : null,
      padding: THelperFunctions.getColor(text) != null ? EdgeInsets.all(0) : null,
    );
  }
}