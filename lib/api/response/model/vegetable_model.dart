class VegetableModel {
  String? expertIn;
  String? image;
  String? name;

  VegetableModel({this.expertIn, this.image, this.name});

  VegetableModel.fromJson(Map<String, dynamic> json) {
    expertIn = json['expertIn'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['expertIn'] = expertIn;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}
