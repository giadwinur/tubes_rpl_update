import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tubes_rpl_update/backend_artikel/model_artikel.dart';
import 'package:tubes_rpl_update/backend_artikel/xtra/prov.dart';
import 'package:tubes_rpl_update/config/_index.dart';
import 'package:tubes_rpl_update/config/xtras.dart';

import '../../xtras/fb.firestore.dart';

final rpa = RepoArtikel();

class RepoArtikel {
//*membaca semua data dari firesrore
  Future<List<ModelArtikel>> readAllProduct() async {
    List<ModelArtikel> product = [];
    final QuerySnapshot<Map<String, dynamic>> result = await x1FbFirestore.readCollection(
      lastCreateTime: pva.rxProductList.st.isNotEmpty ? pva.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.99',
      colId: 'artikel',
      // limit: pva.limit,
    );
    logx.wtf(result.docs.length.toString());
    for (var i in result.docs) {
      product.add(
        ModelArtikel.fromMap(
          i.data(),
        ),
      );
    }
    logx.i(product[0].toString());
    // logx.s(product[1].toString());
    // logx.wtf(product[2].toString());
    // logx.i(product[3].toString());
    // logx.s(product[4].toString());
    // logx.w(product[5].toString());
    // logx.s(product[6].toString());
    // logx.i(product[7].toString());
    // logx.wtf(product[8].toString());
    // logx.s(product.length.toString());
    return product;
  }

  Future<ModelArtikel> readProduct(String id) async {
    final result = await x1FbFirestore.readDocument(colId: 'artikel', docId: id);
    final productResult = ModelArtikel.fromMap(result.data());
    logx.wtf(productResult.toString());
    return productResult;
  }
}
