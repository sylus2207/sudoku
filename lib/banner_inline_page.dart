/*import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sudoku/ad_helper.dart';

class BannerInlinePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _BannerInlinePageState();

}

class _BannerInlinePageState extends State<BannerInlinePage> {

  // TODO: Add _kAdIndex
  static final _kAdIndex = 4;

  // TODO: Add a banner ad instance
  BannerAd? _ad;

  // TODO: Add _getDestinationItemIndex()
  int _getDestinationItemIndex(int rawIndex) {
    if (rawIndex >= _kAdIndex && _ad != null) {
      return rawIndex - 1;
    }
    return rawIndex;
  }

  @override
  void initState() {
    super.initState();

    // TODO: Load a banner ad
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _ad = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, error) {
          // Releases an ad resource when it fails to load
          ad.dispose();
          print('Ad load failed (code=${error.code} message=${error.message})');
        },
      ),
    ).load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(
    // TODO: Adjust itemCount based on the ad load state
    itemCount: widget.entries.length + (_ad != null ? 1 : 0),
    itemBuilder: (context, index) {
    // TODO: Render a banner ad
    if (_ad != null && index == _kAdIndex) {
    return Container(
    width: _ad!.size.width.toDouble(),
    height: 72.0,
    alignment: Alignment.center,
    child: AdWidget(ad: _ad!),
    );
    } else {
    // TODO: Get adjusted item index from _getDestinationItemIndex()
    final item = widget.entries[_getDestinationItemIndex(index)];

    return ListTile(
    );
    }
    },
    ),
    );
  }

}*/