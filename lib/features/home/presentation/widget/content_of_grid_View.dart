import 'package:flutter/material.dart';
import 'package:iss_task/core/routes/routes.dart';
import 'package:iss_task/core/widget/custom_cache_network_image.dart';
import 'package:iss_task/features/home/domain/entity/project_entity.dart';

class ContentOfGridView extends StatelessWidget {
  final ItemEntity item;
  const ContentOfGridView({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.detailsScreen, arguments: item);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CustomCacheNetworkImage(url: item.image),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            item.projectName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            item.startDate,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            item.endDate,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
