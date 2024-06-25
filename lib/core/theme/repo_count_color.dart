import 'package:flutter/material.dart';

/// カウントwidget(star数,watcher数...)の背景色
class CountBackgroundColor extends ThemeExtension<CountBackgroundColor> {
  const CountBackgroundColor({
    required this.starColor,
    required this.watcherColor,
    required this.forkColor,
    required this.issueColor,
  });

  final Color? starColor;
  final Color? watcherColor;
  final Color? forkColor;
  final Color? issueColor;

  @override
  CountBackgroundColor copyWith({
    Color? starColor,
    Color? watcherColor,
    Color? forkColor,
    Color? issueColor,
  }) {
    return CountBackgroundColor(
      starColor: starColor ?? this.starColor,
      watcherColor: watcherColor ?? this.watcherColor,
      forkColor: forkColor ?? this.forkColor,
      issueColor: issueColor ?? this.issueColor,
    );
  }

  @override
  CountBackgroundColor lerp(CountBackgroundColor? other, double t) {
    if (other is! CountBackgroundColor) {
      return this;
    }
    return CountBackgroundColor(
      starColor: Color.lerp(starColor, other.starColor, t),
      watcherColor: Color.lerp(watcherColor, other.watcherColor, t),
      forkColor: Color.lerp(forkColor, forkColor, t),
      issueColor: Color.lerp(issueColor, issueColor, t),
    );
  }
}
