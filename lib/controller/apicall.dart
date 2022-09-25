import 'package:http/http.dart' as http;
import 'package:notech_machine_test/model/modelclass.dart';
import 'package:notech_machine_test/util/constants.dart';


Future<Apidata> fetchDataFromApi() async 
{
  final response = await http.get(
    Uri.parse(API_URL),
   
  );
    if (response.statusCode == 200) 
      {
         return apidataFromJson(response.body);
      } else {
            throw Exception('Failed to create album.');
              }
}
