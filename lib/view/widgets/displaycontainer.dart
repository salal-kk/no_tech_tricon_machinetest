import 'package:flutter/material.dart';

Widget displayContainer(
    {String? username,
    String? id,
    String? location,
    String? price,
    String? url}) {
  return Padding(
    padding: const EdgeInsets.only(top: 50, right: 10),
    child: Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 209, 222, 212),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(url ?? ""), fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RichText(
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                text: TextSpan(children: <TextSpan>[
                  const TextSpan(
                      text: "ID :",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  TextSpan(
                      text: id.toString(),
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey))
                ])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              const TextSpan(
                  text: "Name :",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              TextSpan(
                  text: username,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey))
            ])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              const TextSpan(
                  text: "Location :",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              TextSpan(
                  text: location,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey))
            ])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              const TextSpan(
                  text: "Price :",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              TextSpan(
                  text: price.toString(),
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey))
            ])),
          )
        ],
      ),
    ),
  );
}
