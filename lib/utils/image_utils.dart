import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageUtils{
  static CachedNetworkImage loadImage(String url, double width, double height, [BoxFit fit = BoxFit.cover]){
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: Colors.black12
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error)
    );
  }
}