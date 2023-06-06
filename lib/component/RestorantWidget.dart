import 'package:flutter/material.dart';
import 'package:launchrabbit/MapPage.dart';
import '../colors.dart';

class RestorantWidget extends StatefulWidget {
  final String name;
  final String menu;
  final bool isStar;
  final int maxSeats;
  final int seats;
  final double km;
  final String area;

  const RestorantWidget({
    Key? key,
    required this.area,
    required this.name,
    required this.menu,
    required this.km,
    required this.isStar,
    required this.maxSeats,
    required this.seats,
  }) : super(key: key);

  @override
  _RestorantWidgetState createState() => _RestorantWidgetState();
}

class _RestorantWidgetState extends State<RestorantWidget> {
  Color statusColor = primaryColor;
  Color mainColor = primaryColor;
  bool star = false; // Initialized with a default value

  @override
  void initState() {
    super.initState();
    star = widget.isStar;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.maxSeats - widget.seats > 8) {
      statusColor = safeColor;
    } else if (widget.maxSeats - widget.seats > 4) {
      statusColor = primaryColor;
    } else {
      statusColor = warningColor;
    }

    TextStyle statusStyle = TextStyle(
      fontSize: 26,
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
      color: mainBlack,
      fontWeight: FontWeight.w600,
    );

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
        decoration: BoxDecoration(
          boxShadow: [defaultShadow],
          color: mainWhite,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: statusColor,
                    ),
                    Text(widget.seats.toString(), style: statusStyle),
                    Text(
                      '/',
                      style: statusStyle,
                    ),
                    Text(widget.maxSeats.toString(), style: statusStyle),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 4)),
              Text(
                widget.name,
                style: nameStyle,
              ),
              Padding(padding: EdgeInsets.only(top: 4)),
              Text(
                widget.menu,
                style: menuStyle,
              ),
              Padding(padding: EdgeInsets.only(top: 6)),
              Text(
                widget.km.toString() + 'km',
                style: kmStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        star = !star;
                      });
                    },
                    icon: star
                        ? Icon(Icons.star, size: 20)
                        : Icon(Icons.star_border, size: 20),
                    color: mainColor,
                  ),
                  Text(
                    '|',
                    style: menuStyle,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MapPage()),
                      );
                    },
                    icon: Icon(
                      Icons.location_on,
                      size: 
 20,
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
