import 'package:go_router/go_router.dart';

class NavigationManager {
  const NavigationManager(
    this._goRouter,
  );

  final GoRouter _goRouter;

  void go(String location, {Object? extra}) {
    _goRouter.go(location, extra: extra);
  }

  Future<T?> push<T extends Object?>(String location, {Object? extra}) {
    return _goRouter.push(location, extra: extra);
  }

  void mayBePop<T extends Object?>([T? result]) {
    if (_goRouter.canPop()) {
      _goRouter.pop(result);
    }
  }

  void pop<T extends Object?>([T? result]) {
    _goRouter.pop(result);
  }
}
