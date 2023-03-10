import 'package:flutter/material.dart';

extension StringExtension on String {
  String truncateTo(int maxLength) =>
      (length <= maxLength) ? this : '${substring(0, maxLength)}...';

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}