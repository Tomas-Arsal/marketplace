import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

productImage({
  required String imageUrl,
  double height = 120,
  double width = 120,
}) =>
    CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );