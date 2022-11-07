import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jazz_cash/components/my_button.dart';

class PersistenseAppBar extends SliverPersistentHeaderDelegate {
  PersistenseAppBar({required this.maxExtent, required this.minExtent});
  final double maxExtent;
  final double minExtent;
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    print(stretchConfiguration?.onStretchTrigger);
    titleOpacity(shrinkOffset);

    return Container(
      height: maxExtent,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9), borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: min(shrinkOffset, minExtent)),
            child: const Text(
              'HEy data ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Visibility(
            visible: shrinkOffset < minExtent,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 100),
              opacity: titleOpacity(shrinkOffset),
              child: MyButton(color: Colors.red, icon: Icons.add, title: 'Add Money'),
            ),
          )
        ],
      ),
    );
  }

  double titleOpacity(double shrinkOffSet) {
    var oppacity = 1.0 - max(0.0, shrinkOffSet) / minExtent;
    if (oppacity < 0) {
      oppacity = 0;
    }
    print("object $oppacity");
    return oppacity;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    print('rebuild ${oldDelegate.snapConfiguration}');
    // TODO: implement shouldRebuild
    return false;
  }
}
