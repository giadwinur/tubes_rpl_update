import 'dart:convert';

class ModelsBerita {
  String createdAt;
  String ontap;
  String image;
  String judul;
  String id;
  ModelsBerita({
    this.createdAt = '',
    this.ontap = '',
    this.image = '',
    this.judul = '',
    this.id = '',
  });

  ModelsBerita copyWith({
    String? createdAt,
    String? ontap,
    String? image,
    String? judul,
    String? id,
  }) {
    return ModelsBerita(
      createdAt: createdAt ?? this.createdAt,
      ontap: ontap ?? this.ontap,
      image: image ?? this.image,
      judul: judul ?? this.judul,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'created_at': createdAt});
    result.addAll({'ontap': ontap});
    result.addAll({'image': image});
    result.addAll({'judul': judul});
    result.addAll({'id': id});

    return result;
  }

  factory ModelsBerita.fromMap(Map<String, dynamic> map) {
    return ModelsBerita(
      createdAt: map['created_at'] ?? '',
      ontap: map['ontap'] ?? '',
      image: map['image'] ?? '',
      judul: map['judul'] ?? '',
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelsBerita.fromJson(String source) => ModelsBerita.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ModelsBerita(createdAt: $createdAt, ontap: $ontap, image: $image, judul: $judul, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ModelsBerita &&
        other.createdAt == createdAt &&
        other.ontap == ontap &&
        other.image == image &&
        other.judul == judul &&
        other.id == id;
  }

  @override
  int get hashCode {
    return createdAt.hashCode ^ ontap.hashCode ^ image.hashCode ^ judul.hashCode ^ id.hashCode;
  }
}
