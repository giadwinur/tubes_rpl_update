import 'package:tubes_rpl_update/backend_artikel/xtra/prov.dart';
import 'package:tubes_rpl_update/config/xtras.dart';

import 'repo.dart';

final sva = ServArtikel();

class ServArtikel {
  getProductLoader() {
    pva.rxproductloader.stateAsync = rpa.readAllProduct();
  }

  getProductList(moreProduct) {
    pva.rxProductList.st = [...pva.rxProductList.st, ...moreProduct];
    // if (moreProduct.length < pva.limit) {
    //   pva.rxIsEnd.st = true;
    // }
  }

  setSelectedId(String id) {
    pva.rxSelectedId.st = id;
  }

  getProductDetail() {
    pva.rxProductDetail.stateAsync = rpa.readProduct(pva.rxSelectedId.st);
  }
}
