import 'dart:math' show max;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:test_system/src/shared/assets/app_assets.dart';

import '../widgets/universal_asset_image.dart';

class ScaffoldWithNavBar extends ConsumerStatefulWidget {
  const ScaffoldWithNavBar({
    required this.navigationShell,
    required this.children,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  /// The children (branch Navigators) to display in a custom container
  /// ([AnimatedBranchContainer]).
  final List<Widget> children;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends ConsumerState<ScaffoldWithNavBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _helloAnimation;
  ProviderSubscription<dynamic>? unreadCountTimerSub;

  @override
  void initState() {
    super.initState();

    _helloAnimation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();
  }

  @override
  void dispose() {
    _helloAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final systemNavigationPadding = MediaQuery.paddingOf(context).bottom;

    final RouteMatchList routeMatchList =
        GoRouter.of(context).routerDelegate.currentConfiguration;

    const topPadding = 10.0;
    const bottomPadding = 14.0;
    const horizontalOuterPadding = 16.0;
    const horizontalInnerPadding = 8.0;

    final navBar = Container(
      padding: EdgeInsets.only(
        bottom: max(systemNavigationPadding, bottomPadding),
      ),
      color: theme.colorScheme.surface,
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Flexible(
              flex: 100,
              child: _NavigationButton(
                routeMatchList: routeMatchList,
                location: '/contests',
                onTap: () {
                  _goOtherTab(0, ref, context);
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                activeIcon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                padding: const EdgeInsets.only(
                  left: horizontalOuterPadding,
                  top: topPadding,
                  right: horizontalInnerPadding,
                ),
              ),
            ),
            Flexible(
              flex: 100,
              child: _NavigationButton(
                routeMatchList: routeMatchList,
                location: '/rating',
                onTap: () {
                  _goOtherTab(1, ref, context);
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                activeIcon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                padding: const EdgeInsets.only(
                  top: topPadding,
                ),
              ),
            ),
            Flexible(
              flex: 100,
              child: _NavigationButton(
                routeMatchList: routeMatchList,
                location: '/submissions',
                onTap: () {
                  _goOtherTab(2, ref, context);
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                activeIcon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                padding: const EdgeInsets.only(
                  left: horizontalInnerPadding,
                  top: topPadding,
                  right: horizontalOuterPadding,
                ),
              ),
            ),
            Flexible(
              flex: 100,
              child: _NavigationButton(
                routeMatchList: routeMatchList,
                location: '/profile',
                onTap: () {
                  _goOtherTab(3, ref, context);
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                activeIcon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                padding: const EdgeInsets.only(
                  left: horizontalInnerPadding,
                  top: topPadding,
                  right: horizontalOuterPadding,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    final currentPageIndex = widget.navigationShell.currentIndex;
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        const redirectIndex = 0;
        final shouldRedirect =
            !context.canPop() && widget.navigationShell.currentIndex != 0;
        if (shouldRedirect) {
          _goOtherTab(redirectIndex, ref, context);
          return;
        }
        // if stack is empty, close app
        SystemNavigator.pop();
      },
      child: Scaffold(
        bottomNavigationBar: navBar,
        body: widget.children[currentPageIndex],
      ),
    );
  }

  void _goOtherTab(int index, WidgetRef ref, BuildContext context) {
    // When navigating to a new branch, it's recommended to use the goBranch
    // method, as doing so makes sure the last navigation state of the
    // Navigator for the branch is restored.
    widget.navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell.currentIndex,
    );

    // final brightness = index == 1 ? Brightness.light : Brightness.dark;
    // configureNativeUi(statusBarBrightness: brightness);
  }
}

class _NavigationButton extends StatelessWidget {
  const _NavigationButton({
    required this.routeMatchList,
    required this.location,
    required this.icon,
    required this.activeIcon,
    required this.onTap,
    this.padding,
    // this.preRouteCallback,
    // this.navigationCondition,
    // this.navigationFailed,
  });

  final RouteMatchList routeMatchList;
  final String location;
  final void Function() onTap;
  final Widget icon;
  final Widget activeIcon;

  // final bool Function()? navigationCondition;
  // final void Function()? navigationFailed;
  final EdgeInsetsGeometry? padding;

  /// Коллбек, который вызывает сразу после перехода по [location]
  // final void Function()? preRouteCallback;

  bool get isActive => routeMatchList.matches.map((e) {
        return e.matchedLocation;
      }).contains(location);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // if (!(navigationCondition?.call() ?? true)) {
        //   navigationFailed?.call();
        //   return;
        // }
        // preRouteCallback?.call();
        // context.go(location);
        onTap();
      },
      child: Container(
        padding: padding,
        alignment: Alignment.center,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: isActive ? activeIcon : icon,
        ),
      ),
    );
  }
}
