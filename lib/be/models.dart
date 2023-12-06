import 'dart:convert';

class ModelsBerita {
  String image;
  String judul;
  String ontap;
  String createdAt;
  String id;
  ModelsBerita({
    this.image = '',
    this.judul = '',
    this.ontap = '',
    this.createdAt = '',
    this.id = '',
  });

  ModelsBerita copyWith({
    String? image,
    String? judul,
    String? ontap,
    String? createdAt,
    String? id,
  }) {
    return ModelsBerita(
      image: image ?? this.image,
      judul: judul ?? this.judul,
      ontap: ontap ?? this.ontap,
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'image': image});
    result.addAll({'judul': judul});
    result.addAll({'ontap': ontap});
    result.addAll({'created_at': createdAt});
    result.addAll({'id': id});

    return result;
  }

  factory ModelsBerita.fromMap(Map<String, dynamic> map) {
    return ModelsBerita(
      image: map['image'] ?? '',
      judul: map['judul'] ?? '',
      ontap: map['ontap'] ?? '',
      createdAt: map['created_at'] ?? '',
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelsBerita.fromJson(String source) => ModelsBerita.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ModelsBerita(image: $image, judul: $judul, ontap: $ontap, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ModelsBerita &&
        other.image == image &&
        other.judul == judul &&
        other.ontap == ontap &&
        other.createdAt == createdAt &&
        other.id == id;
  }

  @override
  int get hashCode {
    return image.hashCode ^ judul.hashCode ^ ontap.hashCode ^ createdAt.hashCode ^ id.hashCode;
  }
}
