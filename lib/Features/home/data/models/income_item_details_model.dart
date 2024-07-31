import 'package:flutter/material.dart';

class IncomeItemDetailsModel {
  final String title, percentage;
  final Color color;

  IncomeItemDetailsModel(
      {required this.title, required this.percentage, required this.color});
}

final List<IncomeItemDetailsModel> incomeItems = [
  IncomeItemDetailsModel(
    title: "Design service",
    percentage: "40%",
    color: const Color(0xff208CC8),
  ),
  IncomeItemDetailsModel(
    title: "Design product",
    percentage: "25%",
    color: const Color(0xff4EB7F2),
  ),
  IncomeItemDetailsModel(
    title: "Product royalti",
    percentage: "20%",
    color: const Color(0xff064061),
  ),
  IncomeItemDetailsModel(
    title: "Other",
    percentage: "22%",
    color: const Color(0xffE2DECD),
  ),
];
