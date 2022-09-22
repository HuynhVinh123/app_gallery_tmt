import 'package:app_gallery_tmt/gen/assets.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_repository_impl.freezed.dart';

class ImageRepositoryImpl {
  final List<ImageModel> images = const [
    ImageModel(
        path: "assets/images/history/IMG_20190418_183630.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191025_102424.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191025_104926.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191025_112658.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191025_175301.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191025_175404.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191026_054740.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191026_055635.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191026_060701.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191026_060721.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191026_084951.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191026_191639.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/IMG_20191027_121826.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00590.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00592.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00594.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00596.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00599.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00608.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00610.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00614.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00623.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00624.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00627.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00628.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00632.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00661.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00668.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00674.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00679.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00688.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00692.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00696.jpg", tag: 'history'),
    ImageModel(path: "assets/images/history/MAY00697.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160130_180305.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160130_181911.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160130_200229.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160714_205039.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160714_205050.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_084222.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_084712_HDR.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_084718.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_084817_HDR.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_100207_HDR.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_113243.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_202721.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_204623.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_211508.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_211510.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160715_211514.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160716_150904.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160716_152248.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160716_165053.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160716_165709.jpg", tag: 'history'),
    ImageModel(
        path: "assets/images/history/a20160716_184043.jpg", tag: 'history'),
    ImageModel(path: "assets/images/soccer2022/1.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/IMGa5605.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5035.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5053.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5063.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5065.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5067.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5068.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5069.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5071.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5072.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5080.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5082.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5083.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5085.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5086.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5088.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5090.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5091.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5092.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5093.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5097.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5101.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5102.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5107.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5109.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5112.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5114.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5122.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5124.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5125.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5129.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5131.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5137.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5143.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5146.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5147.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5151.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5155.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5159.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5163.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5166.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5171.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5174.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5176.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5181.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5183.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5189.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5192.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5193.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5196.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5202.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5204.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5206.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5208.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5213.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5214.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5215.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5217.CR2.jpg", tag: 'soccer2022'),
    ImageModel(
        path: "assets/images/soccer2022/aMG_5223.CR2.jpg", tag: 'soccer2022'),
  ];
  final List<AlbumModel> albums = [
    AlbumModel(id: 1, name: 'Team Building 2022'),
    AlbumModel(id: 2, name: 'Team Building 2020'),
    AlbumModel(id: 3, name: 'Ở CN1'),
    AlbumModel(id: 4, name: 'Tại Diệp Minh Châu'),
    AlbumModel(id: 4, name: 'Ảnh siêu lầy lội'),
    AlbumModel(id: 5, name: 'Giải đá banh 2022', tag: 'soccer2022'),
    AlbumModel(id: 5, name: 'Quá khứ', tag: 'history'),
  ];

  Future<List<AlbumModel>> getAlbums() async {
    return albums.toList();
  }

  Future<List<ImageModel>> getImages() async {
    return images.toList();
  }

  Future<AlbumModel> getAlbumById(int id) async {
    final ab = albums.firstWhere(
      (element) => element.id == id,
    );

    return ab.copyWith(
      images: images
          .where(
            (element) => element.tag.contains(ab.tag),
          )
          .toList(),
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
