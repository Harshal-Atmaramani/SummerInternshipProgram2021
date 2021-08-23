import 'package:http/http.dart' as http;
import 'package:task_11/data.dart';

Future fetchData(String vehicleNumber) async {
  final response = await http
      .get(Uri.parse('https://regcheck.org.uk/api/reg.asmx/CheckIndia?RegistrationNumber=$vehicleNumber&username=suyashd01'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    details=response.body;
    return response.body;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
