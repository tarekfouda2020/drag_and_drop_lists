import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class LoadMoreRefresher extends StatelessWidget {
  final Widget child;
  final RefreshController refreshController;
  final ScrollController? scrollController;
  final bool? primary;
  final bool enablePullUp;
  final bool enablePullDown;
  final ScrollPhysics? physics;
  final VoidCallback? onRefresh;
  final VoidCallback? onLoadMore;
  final bool reverse;
  final String noMoreDataString;
  final Widget? header;
  final Widget? footer;

  LoadMoreRefresher({
    Key? key,
    required this.child,
    required this.refreshController,
    this.scrollController,
    this.onRefresh,
    this.onLoadMore,
    this.enablePullUp = true,
    this.enablePullDown = true,
    this.reverse = false,
    this.primary,
    this.physics,
    required this.header,
    required this.footer,
    required this.noMoreDataString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      primary: primary,
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
      onLoading: onLoadMore,
      onRefresh: onRefresh,
      physics: physics,
      reverse: reverse,
      controller: refreshController,
      scrollController: scrollController,
      header: header,
      footer: footer,
      child: child,
    );
  }
}
