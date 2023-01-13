// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.60.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'gened_api_2.io.dart' if (dart.library.html) 'gened_api_2.web.dart';

import 'package:meta/meta.dart';

abstract class Api2 {
  Future<String> testNoParam2({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestNoParam2ConstMeta;

  Future<String> testStringInt2(
      {required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestStringInt2ConstMeta;
}

class Api2Impl implements Api2 {
  final Api2Platform _platform;
  factory Api2Impl(ExternalLibrary dylib) => Api2Impl.raw(Api2Platform(dylib));

  /// Only valid on web/WASM platforms.
  factory Api2Impl.wasm(FutureOr<WasmModule> module) =>
      Api2Impl(module as ExternalLibrary);
  Api2Impl.raw(this._platform);
  Future<String> testNoParam2({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_no_param_2(port_),
      parseSuccessData: _wire2api_String,
      constMeta: kTestNoParam2ConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestNoParam2ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_no_param_2",
        argNames: [],
      );

  Future<String> testStringInt2(
      {required String s, required int i, dynamic hint}) {
    var arg0 = _platform.api2wire_String(s);
    var arg1 = api2wire_u32(i);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_test_string_int_2(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kTestStringInt2ConstMeta,
      argValues: [s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestStringInt2ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_string_int_2",
        argNames: ["s", "i"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }
}

// Section: api2wire

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
