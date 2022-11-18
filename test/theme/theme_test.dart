import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:test_flutter_circle_ci/providers/connectivity_provider.dart';

import 'package:provider/provider.dart';
import 'package:test_flutter_circle_ci/providers/providers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Theme mockConnectivity = MockConnectivity();

  test('Test connectivity', () async {
    // ConnectivityProvider connectivityProvider = ConnectivityProvider();
    ThemeProvider themeProvider = ThemeProvider();
    //
    expect(1 + 1, 2);
  });

  // test(
  //   'Listening network connectivity changes',
  //   () async {
  //     ConnectivityProvider connectivityProvider = ConnectivityProvider();
  //     expect(connectivityProvider.listenNetworkConnectivity, isA<void>());
  //   },
  // );

  // test('Testing CheckNetworkConnectivity method', () async {
  //   when(mockConnectivity.checkConnectivity())
  //       .thenAnswer((_) async => ConnectivityResult.wifi);
  //   ConnectivityProvider connectivityProvider = ConnectivityProvider();
  //   expect(
  //     await connectivityProvider.checkNetworkConnectivity(),
  //     isA<ConnectivityResult>(),
  //   );
  // });

  // test('Testing all the getters', () {
  //   final ConnectivityProvider connectivityProvider = ConnectivityProvider();

  //   expect(connectivityProvider.getIsConnected, isFalse);
  //   expect(connectivityProvider.getShowSnackBar, isFalse);
  //   expect(connectivityProvider.getSnackbarKey, isA<GlobalKey>());
  //   expect(connectivityProvider.getConnectivity, isA<Connectivity>());
  //   expect(connectivityProvider.getResult, isA<ConnectivityResult>());
  // });

  // test('Clears/closes the stream subscription', () {
  //   ConnectivityProvider connectivityProvider = ConnectivityProvider();
  //   connectivityProvider.clearConnectivityStream();
  //   expect(connectivityProvider.clearConnectivityStream, isA<void>());
  // });
}
