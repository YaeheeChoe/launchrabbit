import 'package:flutter/material.dart';
import 'package:launchrabbit/MapPage.dart';
import 'package:launchrabbit/provider/restorantProvider.dart';
import '../colors.dart';
import 'package:provider/provider.dart';
import '../provider/restorantProvider.dart';

class RestorantWidget extends StatelessWidget {
  final String name;
  final String menu;
  final int maxSeats;
  final int seats;
  final double km;
  final String area;

  RestorantWidget({
    required this.name,
    required this.menu,
    required this.maxSeats,
    required this.seats,
    required this.km,
    required this.area,
  });

  // Initialized with a default value

  @override
  Widget build(BuildContext context) {
    return Consumer<Restorant>(
      builder: (context, provider, _) {

        Color statusColor = primaryColor;
        Color mainColor = primaryColor;
        bool star = provider.getStar(this);
        if (maxSeats - seats > 8) {
          statusColor = safeColor;
        } else if (maxSeats - seats > 4) {
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
                        Text(seats.toString(), style: statusStyle),
                        Text(
                          '/',
                          style: statusStyle,
                        ),
                        Text(maxSeats.toString(), style: statusStyle),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4)),
                  Text(
                    name,
                    style: nameStyle,
                  ),
                  Padding(padding: EdgeInsets.only(top: 4)),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          provider.toggleStar(this);
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
                          size: 20,
                            ),
                            color: mainColor,
                          )
                        ],
                      ),
                    ]),
              ),
            )
            );
      });
    }
  }

