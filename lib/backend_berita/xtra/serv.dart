import 'package:tubes_rpl_update/backend_berita/xtra/prov.dart';
import 'package:tubes_rpl_update/config/xtras.dart';

import '../model.dart';
import 'repo.dart';

final sv = Serv();

class Serv {
  getProductLoader() {
    pv.rxproductloader.stateAsync = rp.readAllProduct();
  }

  getProductList(List<ModelsBerita> moreProduct) {
    pv.rxProductList.st = [...pv.rxProductList.st, ...moreProduct];
    if (moreProduct.length < pv.limit) {
      pv.rxIsEnd.st = true;
    }
  }

  createProduct(ModelsBerita product) {
    rp.createproduct(product);
    pv.rxProductList.st = [...pv.rxProductList.st]..insert(0, product);
  }
}
