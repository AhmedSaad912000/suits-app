part of 'view.dart';
class _ItemModel {
  final String image, title;
  final double rate, price;
  bool isFav;

  _ItemModel({
    required this.image,
    required this.title,
    required this.rate,
    required this.price,
    required this.isFav,
  });
}