// Mocks generated by Mockito 5.1.0 from annotations
// in test_flutter_circle_ci/test/connectivity/connectivity_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:ui' as _i7;

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart'
    as _i5;
import 'package:flutter/material.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:test_flutter_circle_ci/providers/connectivity_provider.dart'
    as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeBuildContext_0 extends _i1.Fake implements _i2.BuildContext {}

class _FakeConnectivity_1 extends _i1.Fake implements _i3.Connectivity {}

class _FakeGlobalKey_2<T extends _i2.State<_i2.StatefulWidget>> extends _i1.Fake
    implements _i2.GlobalKey<T> {}

/// A class which mocks [Connectivity].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivity extends _i1.Mock implements _i3.Connectivity {
  MockConnectivity() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i5.ConnectivityResult> get onConnectivityChanged =>
      (super.noSuchMethod(Invocation.getter(#onConnectivityChanged),
              returnValue: Stream<_i5.ConnectivityResult>.empty())
          as _i4.Stream<_i5.ConnectivityResult>);
  @override
  _i4.Future<_i5.ConnectivityResult> checkConnectivity() =>
      (super.noSuchMethod(Invocation.method(#checkConnectivity, []),
              returnValue: Future<_i5.ConnectivityResult>.value(
                  _i5.ConnectivityResult.bluetooth))
          as _i4.Future<_i5.ConnectivityResult>);
}

/// A class which mocks [ConnectivityProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivityProvider extends _i1.Mock
    implements _i6.ConnectivityProvider {
  MockConnectivityProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set context(_i2.BuildContext? _context) =>
      super.noSuchMethod(Invocation.setter(#context, _context),
          returnValueForMissingStub: null);
  @override
  _i2.BuildContext get getContext =>
      (super.noSuchMethod(Invocation.getter(#getContext),
          returnValue: _FakeBuildContext_0()) as _i2.BuildContext);
  @override
  bool get getIsConnected => (super
          .noSuchMethod(Invocation.getter(#getIsConnected), returnValue: false)
      as bool);
  @override
  bool get getShowSnackBar => (super
          .noSuchMethod(Invocation.getter(#getShowSnackBar), returnValue: false)
      as bool);
  @override
  _i3.Connectivity get getConnectivity =>
      (super.noSuchMethod(Invocation.getter(#getConnectivity),
          returnValue: _FakeConnectivity_1()) as _i3.Connectivity);
  @override
  _i5.ConnectivityResult get getResult => (super.noSuchMethod(
      Invocation.getter(#getResult),
      returnValue: _i5.ConnectivityResult.bluetooth) as _i5.ConnectivityResult);
  @override
  _i2.GlobalKey<_i2.ScaffoldMessengerState> get getSnackbarKey =>
      (super.noSuchMethod(Invocation.getter(#getSnackbarKey),
              returnValue: _FakeGlobalKey_2<_i2.ScaffoldMessengerState>())
          as _i2.GlobalKey<_i2.ScaffoldMessengerState>);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i4.Future<_i5.ConnectivityResult> checkNetworkConnectivity(
          {_i3.Connectivity? connectivity}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #checkNetworkConnectivity, [], {#connectivity: connectivity}),
              returnValue: Future<_i5.ConnectivityResult>.value(
                  _i5.ConnectivityResult.bluetooth))
          as _i4.Future<_i5.ConnectivityResult>);
  @override
  void updateConnectionStatus(_i5.ConnectivityResult? result) =>
      super.noSuchMethod(Invocation.method(#updateConnectionStatus, [result]),
          returnValueForMissingStub: null);
  @override
  void clearConnectivityStream() =>
      super.noSuchMethod(Invocation.method(#clearConnectivityStream, []),
          returnValueForMissingStub: null);
  @override
  void addListener(_i7.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i7.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
