import 'package:dio/dio.dart';
import 'package:rick_and_morty/network/data/dto/pagination/pagination.dart';
import 'package:rick_and_morty/network/data/service/service.dart';
import 'package:rick_and_morty/network/model/character/character.dart';

class CharacterRepository {
  CharacterRepository(this._restService);

  final RestService _restService;

  Future<Character> getCharacter(int id) async {
    try {
      final result = await _restService.getCharacter(id);
      return result;
    } on DioException catch (error) {
      rethrow;
    }
  }

  Future<Pagination<Character>> getCharacters({int? page}) async {
    try {
      final result = await _restService.getCharacters(page: page);
      return result;
    } on DioException catch (error, stackTrace) {
      rethrow;
    }
  }
}
