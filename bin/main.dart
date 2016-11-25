import 'dart:io';
import 'dart:convert';

import 'models.dart';
import 'serializers.dart';

main(List<String> args) {
  if (args.length < 1) {
    print("please provide a file");
    return;
  }
  File f = new File(args[0]);
  if (!f.existsSync()) {
    print("this file doesn't exist");
    return;
  }
  //  this code with underscore variable is just for warn
  print("Start warn up");
  ParamsSerializer _s = new ParamsSerializer();
  for (int i = 0; i < 10; i++) {
    Map _m = JSON.decode(f.readAsStringSync());
    Params _p = _s.fromMap(_m);
  }
  print("End warn up");

  Stopwatch sw = new Stopwatch()..start();
  Stopwatch sw1 = new Stopwatch()..start();
  Map m = JSON.decode(f.readAsStringSync());
  sw1.stop();
  print("time for reading and JSON.decode ${sw1.elapsed}");
  sw1
    ..reset()
    ..start();
  ParamsSerializer s = new ParamsSerializer();
  Params p = s.fromMap(m);
  sw1.stop();
  print("Time for parsing json: ${sw1.elapsed}");
  sw1
    ..reset()
    ..start();
  String json = s.toJson(p);
  sw1.stop();
  print("Time for serializer param: ${sw1.elapsed}");
  sw.stop();
  print("Total time is ${sw.elapsed}");
}
