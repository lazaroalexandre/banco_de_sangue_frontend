// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CandidateSexObsessedDto {
  final String sexo;
  final double percentualObesidade;
  CandidateSexObsessedDto({
    required this.sexo,
    required this.percentualObesidade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sexo': sexo,
      'percentual_obesidade': percentualObesidade,
    };
  }

  factory CandidateSexObsessedDto.fromMap(Map<String, dynamic> map) {
    return CandidateSexObsessedDto(
      sexo: map['sexo'] as String,
      percentualObesidade: map['percentual_obesidade'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory CandidateSexObsessedDto.fromJson(String source) => CandidateSexObsessedDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant CandidateSexObsessedDto other) {
    if (identical(this, other)) return true;
  
    return 
      other.sexo == sexo &&
      other.percentualObesidade == percentualObesidade;
  }

  @override
  int get hashCode => sexo.hashCode ^ percentualObesidade.hashCode;
}
