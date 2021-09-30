import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImagesCarousal extends StatelessWidget {
  final List<String> images;
  const ImagesCarousal({Key key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: CarouselSlider(
        options: CarouselOptions(height: 300.0),
        items: images.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width + 50,
                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(i),
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}
