import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import './../constants/app_constants.dart';

class ConnectivityProvider extends ChangeNotifier {
  BuildContext? context;
  bool _isConnected = false;
  bool _showSnackBar = false;

  /// Connectivity Object
  final Connectivity _connectivity = Connectivity();

  /// This will store the result of network connectivity
  ConnectivityResult _result = ConnectivityResult.none;

  /// Connectivity Subscription
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;

  /// Scaffold Global Key
  final GlobalKey<ScaffoldMessengerState> _snackbarKey = scaffoldMessengerKey;

  /// Constructor
  ConnectivityProvider({this.context}) {
    /// Check initial internet connection
    checkNetworkConnectivity();

    /// Subscribe for listening changes in connectivity stream
    // listenNetworkConnectivity();
  }

  // Getters
  BuildContext get getContext => context!;
  bool get getIsConnected => _isConnected;
  bool get getShowSnackBar => _showSnackBar;
  Connectivity get getConnectivity => _connectivity;
  ConnectivityResult get getResult => _result;
  GlobalKey<ScaffoldMessengerState> get getSnackbarKey => _snackbarKey;

  /// This method will listen to network changes and shows snack
  /// message as network toggles
  // void listenNetworkConnectivity({Connectivity? connectivity}) {
  //   connectivity ??= Connectivity();

  //   _connectivitySubscription = connectivity.onConnectivityChanged.listen(
  //     (ConnectivityResult result) {
  //       updateConnectionStatus(result);
  //       _showSnackBar = true;
  //       notifyListeners();
  //     },
  //   );
  // }

  /// This method check the initial internet connection
  Future<ConnectivityResult> checkNetworkConnectivity({
    Connectivity? connectivity,
  }) async {
    connectivity ??= Connectivity();

    try {
      _result = await _connectivity.checkConnectivity();

      updateConnectionStatus(_result);
      notifyListeners();
      return _result;
    } on PlatformException catch (e) {
      Exception('PlatformException Occurred: ${e.toString()}');
    } on SocketException catch (e) {
      Exception('SocketException Occurred: ${e.toString()}');
    } on Exception catch (e) {
      Exception('Exception Occurred: ${e.toString()}');
    }
    return _result;
  }

  /// This method will check network status and will show snackbar
  /// according to status
  void updateConnectionStatus(ConnectivityResult result) {
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      _isConnected = true;
      if (_showSnackBar) {
        _showNetworkStatusSnackBar(
          // ignore: todo
          // TODO: Need to get this string from language files
          'Back online',
          true,
        );
      }
      notifyListeners();
    }
    if (result == ConnectivityResult.none) {
      _isConnected = false;
      _showNetworkStatusSnackBar(
        // ignore: todo
        // TODO: Need to get this string from language files
        'No Internet! Please check your network connection',
        false,
      );
      notifyListeners();
    }
  }

  /// This method actually shows snackbar when network toggles
  void _showNetworkStatusSnackBar(String message, bool status) {
    _snackbarKey.currentState!.hideCurrentSnackBar();
    _snackbarKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.amber,
            fontFamily: 'Roboto-Regular',
            letterSpacing: 0.4,
          ),
        ),
        duration: Duration(seconds: status ? 2 : 4),
        backgroundColor: status ? Colors.red : Colors.black,
      ),
    );
  }

  /// To clear all listeners
  void clearConnectivityStream() {
    if (_connectivitySubscription != null) {
      _connectivitySubscription!.cancel();
    }
    notifyListeners();
  }
}
