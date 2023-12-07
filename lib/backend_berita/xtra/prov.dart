import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tubes_rpl_update/backend_berita/model.dart';
import 'package:tubes_rpl_update/backend_berita/xtra/serv.dart';

final pv = Prov();

class Prov {
  final limit = 5;

  final rxproductloader = RM.injectFuture<List<ModelsBerita>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => sv.getProductLoader(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<ModelsBerita>().toList();
          sv.getProductList(moreProduct);
        }
      },
    ),
  );

  final rxProductList = RM.inject<List<ModelsBerita>>(() => []);

  final rxIsEnd = false.inj();
}
