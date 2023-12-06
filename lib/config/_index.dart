import 'dart:developer' as developer;

// import 'package:web2/akhir/domains/provakhir.dart';
// import 'package:web2/data_nama/datanama_data.dart';
// import 'package:web2/data_nama/fbfirestore.dart';

// part '../datanama_ctrl.dart';
// part '../datanama_view.dart';
// part 'Validators.dart';

final logx = LogWithoutType();
final logxx = LogWithType();

class LogWithoutType {
  void i(String msg) => developer.log('\x1B[37m$msg\x1B[0m', name: '...');
  void s(String msg) => developer.log('\x1B[32m$msg\x1B[0m', name: '...');
  void w(String msg) => developer.log('\x1B[33m$msg\x1B[0m', name: '...');
  void e(String msg) => developer.log('\x1B[31m$msg\x1B[0m', name: '...');
  void wtf(String msg) => developer.log('\x1B[35m$msg\x1B[0m', name: '...');
}

class LogWithType {
  void i(Type type, String msg) => developer.log('\x1B[37m${type.toString()}: $msg\x1B[0m', name: '...');
  void s(Type type, String msg) => developer.log('\x1B[32m${type.toString()}: $msg\x1B[0m', name: '...');
  void w(Type type, String msg) => developer.log('\x1B[33m${type.toString()}: $msg\x1B[0m', name: '...');
  void e(Type type, String msg) => developer.log('\x1B[31m${type.toString()}: $msg\x1B[0m', name: '...');
  void wtf(Type type, String msg) => developer.log('\x1B[35m${type.toString()}: $msg\x1B[0m', name: '...');
}
