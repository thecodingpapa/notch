import 'package:flutter/material.dart';

class Sectioned extends StatelessWidget {
  Sectioned({Key? key}) : super(key: key);

  Size? _size;
  double? imageSize;

  @override
  Widget build(BuildContext context) {
    _size ??= MediaQuery.of(context).size;
    imageSize ??= _size!.width / 2;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Dinner',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: imageSize! + 6 + 16,
          child: ListView.separated(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 6, bottom: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://picsum.photos/100',
                      fit: BoxFit.cover,
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 12);
              },
              itemCount: 10),
        )
      ],
    );
  }
}
