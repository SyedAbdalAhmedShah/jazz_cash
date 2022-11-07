import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jazz_cash/components/persistense_app_bar.dart';
import 'package:jazz_cash/components/upper_appbar.dart';
import 'package:jazz_cash/utils/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black.withOpacity(0.9),
          pinned: true,
          title: const Text(Strings.jazzCash),
          actions: const [
            Icon(Icons.help_outline_outlined),
            SizedBox(
              width: 8,
            ),
            Icon(Icons.notifications)
          ],
          bottom: const PreferredSize(
              preferredSize: Size(double.infinity, 10),
              child: Divider(
                color: Colors.white,
              )),
        ),
        SliverPersistentHeader(pinned: true, delegate: PersistenseAppBar(maxExtent: 250, minExtent: 100)),
        SliverList(delegate: SliverChildBuilderDelegate(((context, index) => Text('hi $index'))))
      ],
    )
        // NestedScrollView(
        //   floatHeaderSlivers: true,
        //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
        //       [
        //     SliverPersistentHeader(
        //       pinned: true,

        //         delegate: PersistenseAppBar(maxExtent: 250, minExtent: 150))
        //     // SliverAppBar(
        //     //   backgroundColor: Colors.black87,
        //     //   automaticallyImplyLeading: true,
        //     //   shape: const RoundedRectangleBorder(
        //     //     borderRadius: BorderRadius.only(
        //     //       bottomLeft: Radius.circular(30),
        //     //     ),
        //     //   ),
        //     //   onStretchTrigger: () {
        //     //     return Future.value('hi');
        //     //   },
        //     //   flexibleSpace: FlexibleSpaceBar(
        //     //     title: Column(
        //     //       mainAxisAlignment: MainAxisAlignment.end,
        //     //       children: [
        //     //         const CircleAvatar(
        //     //           radius: 50,
        //     //           backgroundColor: Colors.amber,
        //     //         ),
        //     //         Text(innerBoxIsScrolled ? 'data' : 'abdal'),
        //     //       ],
        //     //     ),
        //     //   ),

        //     //   expandedHeight: 200,
        //     //   bottom: PreferredSize(
        //     //       preferredSize: Size(double.infinity, 100),
        //     //       child: Padding(
        //     //         padding: const EdgeInsets.all(8.0),
        //     //         child: Row(
        //     //           children: [Text('data')],
        //     //         ),
        //     //       )),
        //     // ),
        //   ],
        //   body: ListView.separated(
        //       itemBuilder: ((context, index) => Text('INDEX $index')),
        //       separatorBuilder: ((context, index) => const SizedBox(
        //             height: 10,
        //           )),
        //       itemCount: 50),
        // ),

        );
  }
}
