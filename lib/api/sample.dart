import 'dart:convert';

import 'package:http/http.dart'as http;
sample(String name , String pass)async{
final body={
'name':name,
'pass':pass
};
const uri='';
final res= await http.post(Uri.parse(uri), body: jsonEncode(body));
print(res.statusCode);
}