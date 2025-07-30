import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iss_task/core/base_state/base_state.dart';
import 'package:iss_task/core/constant/app_colors.dart';
import 'package:iss_task/core/routes/routes.dart';
import 'package:iss_task/features/home/domain/entity/project_entity.dart';
import 'package:iss_task/features/home/presentation/view_model/cubit/home_cubit.dart';
import 'package:iss_task/features/home/presentation/widget/content_of_grid_View.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
              },
              child: Text("Log out"))
        ],
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
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              itemBuilder: (context, index) {
                return ContentOfGridView(
                  item: ans.data.listOfProject[index],
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
              child: Text(
                ans.message,
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
