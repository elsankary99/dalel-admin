class HistoricalModel {
	String? imageUrl;
	String? name;
	String? description;

	HistoricalModel({this.imageUrl, this.name, this.description});

	factory HistoricalModel.fromJson(Map<String, dynamic> json) {
		return HistoricalModel(
			imageUrl: json['image_url'] as String?,
			name: json['name'] as String?,
			description: json['description'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'image_url': imageUrl,
				'name': name,
				'description': description,
			};
}
