import 'package:flutter/material.dart';
import 'package:iss_task/core/constant/app_colors.dart';
import 'package:iss_task/core/widget/custom_cache_network_image.dart';
import 'package:iss_task/features/home/domain/entity/project_entity.dart';

class DetailsScreen extends StatelessWidget {
  final ItemEntity itemEntity;
  const DetailsScreen({required this.itemEntity, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.blue,
            expandedHeight: 300,
            title: Text(itemEntity.projectName),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  CustomCacheNetworkImage(url: itemEntity.image),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(
                            red: 0,
                            blue: 0,
                            green: 0,
                          ),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description:",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(itemEntity.description),
                  Text("Start date: ${itemEntity.startDate}"),
                  Text("end date: ${itemEntity.endDate}"),
                  Text("WorkHours: ${itemEntity.workHours}"),
                  Text("Company Name: ${itemEntity.companyName}")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
