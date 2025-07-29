class ProjectEntity {
  final List<ItemEntity> listOfProject;
  ProjectEntity({required this.listOfProject});
}

class ItemEntity {
  final String projectName;
  final String image;
  final String startDate;
  final String endDate;
  final int workHours;
  final String description;
  final String companyName;
  const ItemEntity({
    required this.companyName,
    required this.description,
    required this.endDate,
    required this.image,
    required this.projectName,
    required this.startDate,
    required this.workHours,
  });
}
