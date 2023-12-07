import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tubes_rpl_update/backend_berita/xtra/prov.dart';
import 'package:tubes_rpl_update/config/_index.dart';
import 'package:tubes_rpl_update/config/xtras.dart';
import 'package:uuid/uuid.dart';

import '../../xtras/fb.firestore.dart';
import '../model.dart';

final rp = Repo();

class Repo {
//*membaca semua data dari firesrore
  Future<List<ModelsBerita>> readAllProduct() async {
    List<ModelsBerita> product = [];
    final QuerySnapshot<Map<String, dynamic>> result = await x1FbFirestore.readCollection(
      colId: 'berita',
      // limit: pv.limit,
      lastCreateTime: pv.rxProductList.st.isNotEmpty ? pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.99',
    );
    logx.wtf(result.docs.length.toString());
    for (var i in result.docs) {
      product.add(
        ModelsBerita.fromMap(
          i.data(),
        ),
      );
    }
    logx.i(product[0].toString());
    logx.s(product[1].toString());
    logx.wtf(product[2].toString());
    // logx.i(product[3].toString());
    // logx.s(product[4].toString());
    // logx.w(product[5].toString());
    // logx.s(product[6].toString());
    // logx.i(product[7].toString());
    // logx.wtf(product[8].toString());
    // logx.s(product.length.toString());
    return product;
  }

  Future<void> createproduct(ModelsBerita product) async {
    logx.i(product.toString());
    await x1FbFirestore.createDocument(
      colId: 'berita',
      docId: const Uuid().v1(),
      data: product.toMap(),
    );
  }
}
