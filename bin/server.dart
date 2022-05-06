import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

void main() async {
  var server = await shelf_io.serve(
      (Request request) => Response.ok('Hello World!'), '0.0.0.0', 8080);

  print('Serving at http://${server.address.host}:${server.port}');
}
