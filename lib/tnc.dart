import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TnC {
  final String title;
  final String desc;

  TnC(this.title, this.desc);
}

class TnCPage extends StatelessWidget {
  const TnCPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<TnC> data = [
      TnC('title', 'desc'),
      TnC('title2', 'desc2'),
      TnC('title3', 'desc3'),
      TnC('title4', 'desc4'),
    ];

    return Scaffold(
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          itemBuilder: (context, index) => TnCComponent(data: data[index]),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: data.length),
    );
  }
}

class TnCComponent extends StatelessWidget {
  const TnCComponent({
    Key? key,
    required this.data,
  }) : super(key: key);

  final TnC data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.title,
          style:
              GoogleFonts.workSans(fontSize: 21, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          data.desc,
          style:
              GoogleFonts.workSans(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
