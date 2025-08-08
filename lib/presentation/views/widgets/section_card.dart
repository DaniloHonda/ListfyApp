import 'package:flutter/material.dart';
import 'package:listfy_app/presentation/views/widgets/add_list.dart';
import 'package:listfy_app/presentation/views/widgets/list_card.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Expanded(
            child: ListCard(
              icon: Icons.shopping_cart_outlined,
              title: 'Shop',
              hasIcon: true,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: ListCard(
              icon: Icons.list_outlined,
              title: 'Tasks',
              hasIcon: false,
            ),
          ),

          const SizedBox(width: 12),

          AddList(
            onAddList: () {
              // logic here
            },
          ),
        ],
      ),
    );
  }
}