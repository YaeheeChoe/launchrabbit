import 'package:flutter/material.dart';
import 'package:launchrabbit/MapPage.dart';
import '../colors.dart';

class RestorantWidget extends StatelessWidget {
  final String name;
  final String menu;
  final bool isStar;
  final int maxSeats;
  final int seats;
  final double km;
  final String area;

  const RestorantWidget(
      {Key? key,
      required this.area,
      required this.name,
      required this.menu,
      required this.km,
      required this.isStar,
      required this.maxSeats,
      required this.seats})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color statusColor = primaryColor;
    Color mainColor = primaryColor;
    TextStyle statusStyle = TextStyle(
      fontSize: 20,
      color: statusColor,
    );
    TextStyle nameStyle = TextStyle(
      fontSize: 16,
    );
    TextStyle menuStyle = TextStyle(
      fontSize: 12,
      color: textGray,
    );
    TextStyle kmStyle = TextStyle(
      fontSize: 12,
    );
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MapPage()),
          );
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
          decoration: BoxDecoration(boxShadow: [
            defaultShadow,
          ], color: mainWhite, borderRadius: BorderRadius.circular(16)),
          child: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: statusColor,
                    ),
                    Text(seats.toString(), style: statusStyle),
                    Text(
                      '/',
                      style: statusStyle,
                    ),
                    Text(maxSeats.toString(), style: statusStyle),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                name,
                style: nameStyle,
              ),
              Padding(padding: EdgeInsets.only(top: 6)),
              Text(
                menu,
                style: menuStyle,
              ),
              Padding(padding: EdgeInsets.only(top: 6)),
              Text(
                km.toString() + 'km',
                style: kmStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.star_border),
                    color: mainColor,
                  ),
                  Text(
                    '|',
                    style: menuStyle,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_on,
                    ),
                    color: mainColor,
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
