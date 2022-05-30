import 'package:flutter/material.dart';

class Sliders extends StatelessWidget {
  List<_SliderPhoto> _Slider() {
    return [
      _SliderPhoto(imageURL: 'https://i.postimg.cc/zf2tC2rc/ss.jpg', sliderString: ''),
      _SliderPhoto(imageURL: 'https://i.postimg.cc/zf2tC2rc/ss.jpg', sliderString: ''),
      _SliderPhoto(imageURL: 'https://i.postimg.cc/zf2tC2rc/ss.jpg', sliderString: ''),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 220,
      child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10.0),
          children: _Slider().map<Widget>((photo) {
            return _SliderGridItem(sliderPhoto: photo);
          }).toList()),
    );
  }
}

class _SliderPhoto {
  _SliderPhoto({required this.imageURL, required this.sliderString});
  final String imageURL;
  final String sliderString;
}

class _SliderText extends StatelessWidget {
  const _SliderText(this.text, this.fontSize);
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14),
      child: Text(text, style: TextStyle(fontFamily: 'ConcertOne-Regular', fontSize: fontSize)),
    );
  }
}

class _SliderGridItem extends StatelessWidget {
  _SliderGridItem({required this.sliderPhoto});

  final _SliderPhoto sliderPhoto;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: <Widget>[
            Image.network(sliderPhoto.imageURL, width: 400, height: 230, fit: BoxFit.cover),
            Positioned(
                top: 0,
                left: 140,
                child: Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0), color: Colors.transparent, boxShadow: [
                    BoxShadow(
                      color: Colors.transparent,
                    )
                  ]),
                  child: Center(
                    child: Text(
                      sliderPhoto.sliderString,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 5,
        margin: EdgeInsets.all(3),
      ),
    ]);
  }
}
