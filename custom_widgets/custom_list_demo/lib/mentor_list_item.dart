import 'package:customlistdemo/mentor.dart';
import 'package:flutter/material.dart';

class MentorViewItem extends StatelessWidget {
  final Mentor user;

  MentorViewItem(this.user);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 24.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(width: 3.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage(user.imagePath),
                fit: BoxFit.fill,
              )),
          height: 92.0,
          width: 92.0,
        ));

    final card = Container(
      margin: EdgeInsets.only(left: 72.0, right: 24.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 10.0))
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(top: 16.0, left: 72.0),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              user.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 2,
            ),
            Text(user.company,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            Container(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 20.0,
                  color: Colors.white,
                ),
                Text(user.location,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    )),
                Container(width: 24.0),
                Icon(
                  Icons.language,
                  size: 20.0,
                  color: Colors.white,
                ),
                Text(user.language,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    )),
              ],
            )
          ],
        ),
      ),
    );

    return Container(
      height: 120.0,
      margin: EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Stack(
        children: <Widget>[
          card,
          photo,
        ],
      ),
    );
  }
}
