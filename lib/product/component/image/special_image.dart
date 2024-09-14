import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';

class SpecialImage extends CachedNetworkImage {
  final String url;

  SpecialImage({super.key, required this.url})
      : super(
          imageUrl: url,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(
              color: context.primaryColor,
            ),
          ),
          errorWidget: (context, url, error) => Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Required image not found!"),
                context.emptySizedWidthBoxLow,
                Icon(
                  Icons.error,
                  color: context.red,
                ),
              ],
            ),
          ),
        );
}
