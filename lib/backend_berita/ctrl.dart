import 'package:tubes_rpl_update/backend_berita/data.dart';
import 'package:tubes_rpl_update/backend_berita/model.dart';
import 'package:tubes_rpl_update/backend_berita/xtra/serv.dart';
import 'package:tubes_rpl_update/config/_index.dart';
import 'package:uuid/uuid.dart';

final ct = Ctrl();

class Ctrl {
  getProductLoader() {
    sv.getProductLoader();
  }

  getProductList(List<ModelsBerita> moreProduct) {
    sv.getProductList(moreProduct);
  }

  Future<void> createproduct() async {
    final product = ModelsBerita(
        image: 'image', judul: 'JUDUL', ontap: 'tap', createdAt: DateTime.now().toString(), id: const Uuid().v1());
    logx.i(product.toString());
    sv.createProduct(product);
  }

  submit() => dt.rxForm.submit();
}
