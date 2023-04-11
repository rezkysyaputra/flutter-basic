import 'package:flutter/material.dart';

class product {
  @required
  String title;
  @required
  String imageURL;
  @required
  String description;
  @required
  int price;

  product(this.imageURL, this.title, this.price, this.description);
}
