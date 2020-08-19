import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      highlightColor: Colors.amber,
                      icon: Icon(
                        Icons.close,
                        color: Colors.amber,
                        size: 40,
                      ),
                      autofocus: true,
                      onPressed: () {
                        Navigator.pop(context, false);
                      }),
                ),
                Text(
                  "Notifications",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                            backgroundColor: Colors.blue[200],
                            radius: 30,
                            child: Icon(
                              Icons.card_giftcard_rounded,
                              color: Colors.white70,
                              size: 40.0,
                            ))),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Smiley's Store marked your order ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: " #1982787",
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: " as shipped",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            overflow: TextOverflow.clip,
                          )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "9:20 AM",
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(Icons.add_circle, size: 15, color: Colors.amber)
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: Divider(
                    color: Colors.black54,
                    height: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                            backgroundColor: Colors.teal[200],
                            radius: 30,
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.white70,
                              size: 40.0,
                            ))),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Package from your order ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: " #1982787",
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: " has arrived to destination country",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            overflow: TextOverflow.clip,
                          )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Yesterday",
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: Divider(
                    color: Colors.black54,
                    height: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                            backgroundColor: Colors.orange[100],
                            radius: 30,
                            child: Icon(
                              Icons.money_off_csred_outlined,
                              size: 40.0,
                            ))),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "50% OFF",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: " Of everything at",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            overflow: TextOverflow.clip,
                          )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "15 Oct",
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: Divider(
                    color: Colors.black54,
                    height: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                            backgroundColor: Colors.green[200],
                            radius: 30,
                            child: Icon(
                              Icons.local_offer_outlined,
                              size: 40.0,
                              color: Colors.white70,
                            ))),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "BOGO Sale starting ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: " tomorrow",
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ". Don't forget to check it out great deals",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            overflow: TextOverflow.clip,
                          )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "20 Sep",
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: Divider(
                    color: Colors.black54,
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
