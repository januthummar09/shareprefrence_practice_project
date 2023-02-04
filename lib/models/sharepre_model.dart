class ProjectData {
  final String? title;
  final int? time;
  final String? name;

  ProjectData({
    this.title,
    this.time,
    this.name,
  });

  ProjectData.fromJson(Map<String, dynamic> json)
    : title = json['title'] as String?,
      time = json['time'] as int?,
      name = json['name'] as String?;

  Map<String, dynamic> toJson() => {
    'title' : title,
    'time' : time,
    'name' : name
  };
}