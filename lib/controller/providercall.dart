import 'package:flutter/cupertino.dart';
import 'package:notech_machine_test/controller/apicall.dart';
import 'package:notech_machine_test/model/modelclass.dart';

class DataFetchProvider extends ChangeNotifier
 {
    late Future<Apidata> prodata = fetchDataFromApi();

 }
