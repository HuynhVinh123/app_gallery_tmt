class ImageRepositoryImpl {
  final List<ImageModel> images = [];
  final List<AlbumModel> albums = [];

  Future<List<AlbumModel>> getAlbums() async {
    return albums.toList();
  }

  Future<List<ImageModel>> getImages() async {
    return images.toList();
  }
}

class ImageModel {
  ImageModel({required this.path, this.tag = ""});
  final String path;
  final String tag;
}

class AlbumModel {
  AlbumModel({required this.name, this.tag = ''});
  final String name;
  final String tag;
}
