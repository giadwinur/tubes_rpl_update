import 'dart:convert';

class ModelArtikel {
  String id;
  String judul;
  String image;
  String link;
  String paragraf1;
  String paragraf2;
  String paragraf3;
  String createdAt;
  String tema;
  ModelArtikel({
    this.id = '',
    this.judul = '',
    this.image = '',
    this.link = '',
    this.paragraf1 = '',
    this.paragraf2 = '',
    this.paragraf3 = '',
    this.createdAt = '',
    this.tema = '',
  });

  ModelArtikel copyWith({
    String? id,
    String? judul,
    String? image,
    String? link,
    String? paragraf1,
    String? paragraf2,
    String? paragraf3,
    String? createdAt,
    String? tema,
  }) {
    return ModelArtikel(
      id: id ?? this.id,
      judul: judul ?? this.judul,
      image: image ?? this.image,
      link: link ?? this.link,
      paragraf1: paragraf1 ?? this.paragraf1,
      paragraf2: paragraf2 ?? this.paragraf2,
      paragraf3: paragraf3 ?? this.paragraf3,
      createdAt: createdAt ?? this.createdAt,
      tema: tema ?? this.tema,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'judul': judul});
    result.addAll({'image': image});
    result.addAll({'link': link});
    result.addAll({'paragraf1': paragraf1});
    result.addAll({'paragraf2': paragraf2});
    result.addAll({'paragraf3': paragraf3});
    result.addAll({'created_at': createdAt});
    result.addAll({'tema': tema});

    return result;
  }

  factory ModelArtikel.fromMap(Map<String, dynamic> map) {
    return ModelArtikel(
      id: map['id'] ?? '',
      judul: map['judul'] ?? '',
      image: map['image'] ?? '',
      link: map['link'] ?? '',
      paragraf1: map['paragraf1'] ?? '',
      paragraf2: map['paragraf2'] ?? '',
      paragraf3: map['paragraf3'] ?? '',
      createdAt: map['created_at'] ?? '',
      tema: map['tema'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelArtikel.fromJson(String source) => ModelArtikel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ModelArtikel(id: $id, judul: $judul, image: $image, link: $link, paragraf1: $paragraf1, paragraf2: $paragraf2, paragraf3: $paragraf3, createdAt: $createdAt, tema: $tema)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ModelArtikel &&
        other.id == id &&
        other.judul == judul &&
        other.image == image &&
        other.link == link &&
        other.paragraf1 == paragraf1 &&
        other.paragraf2 == paragraf2 &&
        other.paragraf3 == paragraf3 &&
        other.createdAt == createdAt &&
        other.tema == tema;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        judul.hashCode ^
        image.hashCode ^
        link.hashCode ^
        paragraf1.hashCode ^
        paragraf2.hashCode ^
        paragraf3.hashCode ^
        createdAt.hashCode ^
        tema.hashCode;
  }
}
