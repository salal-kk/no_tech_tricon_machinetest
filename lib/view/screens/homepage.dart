import 'package:flutter/material.dart';

import 'package:notech_machine_test/controller/providercall.dart';
import 'package:notech_machine_test/model/modelclass.dart';
import 'package:notech_machine_test/view/widgets/displaycontainer.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _value = 20;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 10.0,
                  trackShape: const RoundedRectSliderTrackShape(),
                  activeTrackColor: Colors.blue,
                  inactiveTrackColor: Colors.blueAccent,
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 14.0,
                    pressedElevation: 8.0,
                  ),
                  thumbColor: Colors.blue,
                  overlayColor: Colors.blue.withOpacity(0.2),
                  overlayShape:
                      const RoundSliderOverlayShape(overlayRadius: 32.0),
                  tickMarkShape: const RoundSliderTickMarkShape(),
                  activeTickMarkColor: Colors.blueAccent,
                  inactiveTickMarkColor: Colors.white,
                  valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                  valueIndicatorColor: Colors.black,
                  valueIndicatorTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                child: Slider(
                  min: 0.0,
                  max: 100.0,
                  value: _value,
                  divisions: 10,
                  label: '${_value.round()}',
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
            ),
            FutureBuilder<Apidata>(
                future: context.read<DataFetchProvider>().prodata,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data?.data?.length,
                          itemBuilder: ((context, index) {
                            return displayContainer(
                                url: snapshot.data?.data?[index].image,
                                username: snapshot.data?.data?[index].name,
                                id: snapshot.data?.data?[index].id,
                                location: snapshot.data?.data?[index].location,
                                price: snapshot.data?.data?[index].price);
                          })),
                    );
                  } else {
                    return const Center(
                      child:  CircularProgressIndicator(),
                    );
                  }
                }),
          ],
        ),
      )),
    );
  }
}
