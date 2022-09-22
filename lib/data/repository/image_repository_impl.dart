import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_repository_impl.freezed.dart';

class ImageRepositoryImpl {
  final List<ImageModel> images = [];

  final List<AlbumModel> albums = [
    AlbumModel(id: 1, name: 'Team Building 2022'),
    AlbumModel(id: 2, name: 'Team Building 2020'),
    AlbumModel(id: 3, name: 'Ở CN1'),
    AlbumModel(id: 4, name: 'Tại Diệp Minh Châu'),
    AlbumModel(id: 4, name: 'Ảnh siêu lầy lội'),
    AlbumModel(id: 5, name: 'Giải đá banh 2022'),
  ];

  Future<List<AlbumModel>> getAlbums() async {
    return albums.toList();
  }

  Future<List<ImageModel>> getImages() async {
    return images.toList();
  }

  Future<AlbumModel> getAlbumById(int id) async {
    return albums.firstWhere(
      (element) => element.id == id,
    );
  }
}

@Freezed()
class ImageModel with _$ImageModel {
  const factory ImageModel({required String path, @Default("") String tag}) =
      _ImageModel;
}

@Freezed()
class AlbumModel with _$AlbumModel {
  const factory AlbumModel({
    required int id,
    required String name,
    @Default('') String tag,
    @Default([]) List<ImageModel> images,
  }) = _AlbumModel;
}
