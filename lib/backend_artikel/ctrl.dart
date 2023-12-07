import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/backend_artikel/data.dart';
import 'package:tubes_rpl_update/backend_artikel/model_artikel.dart';
import 'package:tubes_rpl_update/backend_artikel/xtra/serv.dart';
import 'package:tubes_rpl_update/config/xtras.dart';
import 'package:tubes_rpl_update/dashboard/artikel/detail_artikel.dart';

import '../config/_index.dart';

final cta = CtrlArtikel();

class CtrlArtikel {
  getProductLoader() {
    sva.getProductLoader();
  }

  getProductList(List<ModelArtikel> moreProduct) {
    sva.getProductList(moreProduct);
  }

  select(String id, context) {
    sva.setSelectedId(id);
    logx.wtf(dta.rxSelectedId.st);
    Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailArtikel()));
  }
}
