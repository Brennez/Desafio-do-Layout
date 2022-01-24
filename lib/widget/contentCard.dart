import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentCard extends StatelessWidget {
  const ContentCard(
      {Key? key,
      required this.text,
      required this.icon,
      required this.number,
      required this.cardType})
      : super(key: key);

  final String text;
  final IconData icon;
  final String number;
  final String cardType;

  @override
  Widget build(BuildContext context) {
    if (cardType == "vertical") {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 50),
            child: Text(
              number,
              style: GoogleFonts.concertOne(
                  textStyle: Theme.of(context).textTheme.subtitle1),
            ),
          ),
          Icon(
            icon,
            size: 40,
          ),
          Text(text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            size: 60,
          ),
          Column(
            children: [
              Text(
                number,
                style: GoogleFonts.concertOne(
                  textStyle: Theme.of(context).textTheme.headline2,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 60, top: 10),
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ],
          ),
        ],
      );
    }
  }
}
