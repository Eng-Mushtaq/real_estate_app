
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedNetworkImageWithCache extends StatelessWidget {
  final String? imageKey;
  final String? imageUrl;
  final Widget? placeholder;
  final Widget? errorWidget;
  final BoxFit fit;
  final double width;

  CachedNetworkImageWithCache({
     this.imageKey,
     this.imageUrl,
     this.placeholder,
     this.errorWidget,
    this.fit = BoxFit.cover,
    this.width = double.infinity
  });

  @override
  Widget build(BuildContext context) {
    // Check if image is cached
    final cachedImage = CachedNetworkImageProvider(imageKey??'');
    final isCached = cachedImage.cacheManager?.getFileFromCache(imageKey??'');
    if (isCached!=null) {
      // Return cached image
      return Image(
        image: cachedImage,
        fit: fit,
        width: width,
      );
    }

    // Otherwise, load image from network and save to cache
    return CachedNetworkImage(
      cacheKey: imageKey,
      imageUrl: imageUrl??'',
      placeholder: (context, url) => Image.asset('assets/images/now_default.jpg',width: double.infinity,fit: BoxFit.cover,),
      errorWidget: (context, url, error) => Image.asset('assets/images/now_default.jpg',width: double.infinity,fit: BoxFit.cover),
      fit: fit,
      width: width,
    );
  }
}
