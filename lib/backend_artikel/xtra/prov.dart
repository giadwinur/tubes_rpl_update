import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tubes_rpl_update/backend_artikel/model_artikel.dart';
import 'package:tubes_rpl_update/backend_artikel/xtra/serv.dart';

final pva = ProvArtikel();

class ProvArtikel {
  // final limit = 5;

  final rxproductloader = RM.injectFuture<List<ModelArtikel>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => sva.getProductLoader(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<ModelArtikel>().toList();
          sva.getProductList(moreProduct);
        }
      },
    ),
  );

  final rxProductList = RM.inject<List<ModelArtikel>>(() => []);

  final rxIsEnd = false.inj();

  final rxSelectedId = RM.inject<String>(() => '');

  final rxProductDetail = RM.injectFuture<ModelArtikel?>(() => Future.value(null),
      sideEffects: SideEffects(
        initState: () => sva.getProductDetail(),
      ));
}
