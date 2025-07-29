import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:iss_task/core/constant/app_assets.dart';
import 'package:iss_task/features/home/data/data_sources/local/home_data_source.dart';
import 'package:iss_task/features/home/data/model/response/project/project.dart';

@Injectable(as: HomeDataSource)
class HomeDataSourceImpl implements HomeDataSource {
  @override
  Future<ProjectDto> getData() async {
    try {
      final response = await rootBundle.loadString(FileAssets.pathFile);

      return ProjectDto.fromJson(json.decode(response));
    } catch (e) {
      throw Exception();
    }
  }
}
