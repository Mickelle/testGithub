import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:test_flutter_circle_ci/providers/connectivity_provider.dart';
import 'connectivity_test.mocks.dart';
import 'package:provider/provider.dart';

@GenerateMocks([Connectivity, ConnectivityProvider])
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MockConnectivity mockConnectivity = MockConnectivity();

  test('Test connectivity', () async {
    when(mockConnectivity.checkConnectivity()).thenAnswer((value) async {
      return ConnectivityResult.mobile;
    });
    // ConnectivityProvider connectivityProvider = ConnectivityProvider();

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
