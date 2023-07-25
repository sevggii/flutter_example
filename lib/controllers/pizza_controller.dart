import 'package:http/http.dart' as http;

void connect() async {
  var client = http.Client();
  var request = http.Request(
    'GET',
    Uri.parse('https://pizza-and-desserts.p.rapidapi.com/pizzas'),
  );
  
  request.headers.addAll({
    "X-RapidAPI-Key": "d3875fdd0emshc5ad7f5a5426f1ap18e44djsn795b094265e8",
    "X-RapidAPI-Host": "pizza-and-desserts.p.rapidapi.com"
  });

   var response = await client.send(request);
   if (response.statusCode == 200) {
      var body = await response.stream.bytesToString();
      print(body);
   } else {
      print('Request failed with status: ${response.statusCode}.');
   }

   client.close();
}