import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:smartdustbin/models/offers.dart';
import 'package:smartdustbin/screens/map.dart';
import 'package:smartdustbin/widgets/userPoints.dart';
import '../utils.dart';
import 'offers.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  final ValueNotifier<bool> isOffers = ValueNotifier(false);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Vx.hexToColor('#5ec043').withOpacity(0.5),
        title: Text('Smart Dustbin'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            UserPoints(
              name: 'Ramyak',
              points: '120',
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                    Vx.hexToColor('#5ec043').withOpacity(0.5),
                  )),
                  onPressed: () {
                    // widget.isOffers.value = !widget.isOffers.value;

                    AlertDialog alertDialog = AlertDialog(
                      contentPadding: const EdgeInsets.all(0),
                      titlePadding: const EdgeInsets.all(0),
                      title: Container(
                        height: kheight(context) * 0.2,
                        child: FlareActor(
                          'assets/tick.flr',
                          animation: 'success',
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                      elevation: 2.0,
                      actions: [
                        FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close'))
                      ],
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alertDialog;
                        });
                  },
                  child: Container(
                    height: kheight(context) * 0.07,
                    width: kwidth(context) * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.camera_alt),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Scan'),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                    Vx.hexToColor('#5ec043').withOpacity(0.5),
                  )),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => MapView()));
                  },
                  child: Container(
                    height: kheight(context) * 0.07,
                    width: kwidth(context) * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.map_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Map View'),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                height: 250,
                child: Image.asset(
                  'assets/logo.PNG',
                  fit: BoxFit.fitHeight,
                )),
            SizedBox(
              height: 40,
            ),
            ValueListenableBuilder(
                valueListenable: widget.isOffers,
                builder: (BuildContext context, bool value, Widget child) {
                  return value
                      ? Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: (BuildContext context, index) {
                                  return Offer(
                                    offerData: OfferData(
                                        desciption: 'null',
                                        image:
                                            'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg',
                                        maxPoints: index.toString(),
                                        title: 'Offer $index'),
                                  );
                                }),
                          ),
                        )
                      : Container(
                          height: 30, child: Text('Offers Coming Soon'));
                }),
          ],
        ),
      ),
    );
  }
}
