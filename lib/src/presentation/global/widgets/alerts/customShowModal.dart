import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/widgets/alerts/customBottomSheet.dart';

void customShowModal(BuildContext context,
        {required CustomBottomSheet customBottomSheet}) =>
    showModalBottomSheet(
      context: context,
      clipBehavior: Clip.antiAlias,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (context) {
        return customBottomSheet;
      },
    );
