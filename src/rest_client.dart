import 'package:http/http.dart' as http;

void main(){
  var url = 'http://localhost:4567/departamento/listar';
  int status = 0;
  http.get(url)
    .then((response) {
      status = response.statusCode;
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      print("1+++++++++++++++++++++");
      print(status);
      print("2+++++++++++++++++++++");
  });
  print("A+++++++++++++++++++++");
  print(status);
  print("B+++++++++++++++++++++");
}