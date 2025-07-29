import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iss_task/core/base_state/base_state.dart';
import 'package:iss_task/core/constant/app_colors.dart';
import 'package:iss_task/core/widget/custom_cache_network_image.dart';
import 'package:iss_task/features/home/domain/entity/project_entity.dart';
import 'package:iss_task/features/home/presentation/view_model/cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.getDataState is BaseLoadingState) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.blue,
              ),
            );
          } else if (state.getDataState is BaseSuccessState) {
            final ans = state.getDataState as BaseSuccessState<ProjectEntity>;
            return GridView.builder(
              itemCount: ans.data.listOfProject.length,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CustomCacheNetworkImage(
                                url: ans.data.listOfProject[index].image),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        ans.data.listOfProject[index].projectName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        ans.data.listOfProject[index].startDate,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        ans.data.listOfProject[index].endDate,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 6 / 8),
            );
          } else if (state.getDataState is BaseFailureState) {
            final ans = state.getDataState as BaseFailureState;
            return Center(
              child: Text(ans.message),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
