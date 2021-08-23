import 'package:flutter/material.dart';
import 'package:task_11/data.dart';
import 'package:http/http.dart' as http;


class VehicleOwnerDetails extends StatefulWidget {
  @override
  _VehicleOwnerDetailsState createState() => _VehicleOwnerDetailsState();
}

class _VehicleOwnerDetailsState extends State<VehicleOwnerDetails> {

  @override
  void initState() {
    getOwnerInfo();
    super.initState();
  }
  @override
  Future getOwnerInfo() async {
    fetchData(vehicleNumber.trim());
    print("ssss${vehicleNumber}ssss");
  }
  Future fetchData(String vehicleNumber) async {
    final response = await http
        .get(Uri.parse('https://regcheck.org.uk/api/reg.asmx/CheckIndia?RegistrationNumber=$vehicleNumber&username=suyashd01'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      setState(() {
        details=response.body;
      });
      return response.body;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicle Details"),),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Center(child: Text("$details"))
          ],),
        ),
      ),
    );
  }
}
