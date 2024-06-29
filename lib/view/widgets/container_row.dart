import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ContainerRow extends StatelessWidget {
  const ContainerRow({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.textColor,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: child,
    );
  }
}
