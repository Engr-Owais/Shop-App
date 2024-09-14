import 'package:flutter/material.dart';

import 'special_image.dart';

class ResponsiveImage extends AspectRatio {
  ResponsiveImage({super.key, required String imageUrl, double? aspectRaito})
      : super(
          aspectRatio: aspectRaito ?? 2,
          child: SpecialImage(
            url: imageUrl,
          ),
        );
}
