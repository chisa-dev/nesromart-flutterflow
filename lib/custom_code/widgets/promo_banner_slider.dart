// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:carousel_slider/carousel_slider.dart';

class PromoBannerSlider extends StatefulWidget {
  const PromoBannerSlider({
    super.key,
    this.width,
    this.height,
    required this.ads,
  });

  final double? width;
  final double? height;
  final List<AdsRecord> ads;

  @override
  State<PromoBannerSlider> createState() => _PromoBannerSliderState();
}

class _PromoBannerSliderState extends State<PromoBannerSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, top: 16, bottom: 16),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 95,
          autoPlay: true,
          aspectRatio: 2.0,
        ),
        items: widget.ads
            .map((ad) => GestureDetector(
                  onTap: () => {},
                  child: SizedBox(
                    child: Container(
                      margin: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Image.network(ad.image,
                                fit: BoxFit.cover, width: widget.width),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
