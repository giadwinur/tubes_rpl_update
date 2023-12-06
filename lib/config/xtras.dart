import 'package:states_rebuilder/states_rebuilder.dart';

extension RMState<T> on ReactiveModel<T> {
  T get st => state;
  set st(T value) => state = value;
}

abstract class RM1 {
  static Injected<T> inj<T>(T creator, Function() init) {
    return RM.inject(
      () => creator,
      debugPrintWhenNotifiedPreMessage: '',
      sideEffects: SideEffects(initState: () => init()),
    );
  }
}

abstract class RM2 {
  static Injected<T> inj<T>(T creator) {
    return RM.inject(
      () => creator,
      debugPrintWhenNotifiedPreMessage: '',
    );
  }
}

abstract class RM3 {
  static Injected<T> inj<T>(T creator) {
    return RM.inject(
      () => creator,
    );
  }
}
