import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class HomeCaruosalWidget extends StatelessWidget {
  final ValueNotifier<int> _sliderIndex = ValueNotifier(0);

  HomeCaruosalWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 200.0,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, _)
              {
                _sliderIndex.value = index;
              }

          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'text $i',
                      style: const TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 8,
        ),
        ValueListenableBuilder(
          valueListenable: _sliderIndex,
          builder: (context, currentIndex, _)=> Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i =0;i<5;i++)
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: i==currentIndex? primaryColor: null,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )

            ],
          ),
        ),
      ],
    );
  }
}