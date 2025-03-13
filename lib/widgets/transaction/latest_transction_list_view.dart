import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/user_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   physics: const BouncingScrollPhysics(),
    //   child: Row(
    //     children: items
    //         .map((e) => IntrinsicWidth(
    //                 child: UserInfoListTile(
    //               title: e.title,
    //               subtitle: e.subTitle,
    //               image: e.image,
    //             )))
    //         .toList(),
    //   ),
    // );
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: UserInfoListTile(
                title: items[index].title,
                subtitle: items[index].subTitle,
                image: items[index].image,
              ),
            );
          }),
    );
  }
}
