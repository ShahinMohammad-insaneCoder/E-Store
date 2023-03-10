

import 'package:flutter/material.dart';

import '../../app_properties.dart';
import 'promo_item.dart';

class UnpaidPage extends StatefulWidget {
  @override
  _UnpaidPageState createState() => _UnpaidPageState();
}

class _UnpaidPageState extends State<UnpaidPage> {
  @override
  Widget build(BuildContext context) {
    Widget payNow = InkWell(
//      onTap: () => Navigator.of(context)
//          .push(MaterialPageRoute(builder: (_) => ViewProductPage())),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
            gradient: mainButton,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.16),
                offset: Offset(0, 5),
                blurRadius: 10.0,
              )
            ],
            borderRadius: BorderRadius.circular(9.0)),
        child: Center(
          child: Text("Pay Now",
              style: const TextStyle(
                  color: const Color(0xfffefefe),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0)),
        ),
      ),
    );

    return Material(
        color: Colors.white,
        child: SafeArea(
          child: LayoutBuilder(
              builder: (_, constraints) => SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Unpaid',
                                    style: TextStyle(
                                      color: darkGrey,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  CloseButton()
                                ],
                              ),
                            ),
                            PromoItem(),
                            Container(
                              margin: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 16),
                              padding: const EdgeInsets.fromLTRB(
                                  16.0, 0, 16.0, 16.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: shadow,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 40,
                                    child: ListTile(
                                      title: Text('Boat Rockerz 350 On-Ear ..'),
                                      trailing: Text('64.68'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: ListTile(
                                      title: Text('Tax'),
                                      trailing: Text('2.25'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: ListTile(
                                      title: Text('Subtotal'),
                                      trailing: Text('66.93'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: ListTile(
                                      title: Text('Promocode'),
                                      trailing: Text('-5.93'),
                                    ),
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 40,
                                    child: ListTile(
                                      title: Text(
                                        'Total',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      trailing: Text(
                                        '\$ 55.53',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: payNow,
                            )
                          ]))))),
        ));
  }
}
