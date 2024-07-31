class TransactionHistoryModel {
  final String title, subTitle, trailing;
  final bool isIncome;

  TransactionHistoryModel({
    required this.title,
    required this.subTitle,
    required this.trailing,
    this.isIncome = true,
  });
}

List<TransactionHistoryModel> transactionHistoryList = [
  TransactionHistoryModel(
    title: 'Cash Withdrawal',
    subTitle: '13 Apr, 2022 ',
    trailing: r'$20,129',
    isIncome: false,
  ),
  TransactionHistoryModel(
    title: 'Landing Page project',
    subTitle: '13 Apr, 2022 at 3:30 PM',
    trailing: r'$2,000',
  ),
  TransactionHistoryModel(
    title: 'Juni Mobile App project',
    subTitle: '13 Apr, 2022 at 3:30 PM',
    trailing: r'$20,129',
  ),
];
