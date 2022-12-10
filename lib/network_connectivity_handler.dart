import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

mixin ConnectivityHandler {
  final Connectivity connectivity = Connectivity();
  late ConnectivityResult _connectivityResult;
  late StreamSubscription<ConnectivityResult> connectivitySubscription;
  bool isConnectedToNetwork = false;

  Future<bool> checkMyInitialConnectionState(BuildContext context, {bool allowSnackBar = true}) async {
    try {
      _connectivityResult =  await connectivity.checkConnectivity();
      checkMyConnectivity(_connectivityResult);
      return true;
    } on Exception {
      if (allowSnackBar) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('something went wrong, please try again', style: TextStyle(fontFamily: 'Roboto',),),));
      }
      return false;
    }
  }

  void checkMyConnectivity(ConnectivityResult result) async {
    _connectivityResult = result;
    if (_connectivityResult == ConnectivityResult.wifi || _connectivityResult == ConnectivityResult.mobile) {
      isConnectedToNetwork = true;
    }
    else {
      isConnectedToNetwork = false;
    }
  }

  Future<bool> checkForInternetServiceAvailability(BuildContext context, {bool allowSnackBar = true}) async {
    if (await checkMyInitialConnectionState(context, allowSnackBar: allowSnackBar)) {
      if (isConnectedToNetwork) {
        try {
          List<InternetAddress> result = await InternetAddress.lookup('example.com').timeout(const Duration(seconds: 10));
          if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
            return true;
          } else {
            if (allowSnackBar) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('unable to connect, please try again', style: TextStyle(fontFamily: 'Roboto',),),));
            }
            return false;
          }
        } catch (e) {
            if (allowSnackBar) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('timeout, no internet access', style: TextStyle(fontFamily: 'Roboto',),),));
            }
            return false;
        }
      }
      else {
        if (allowSnackBar) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('you are not connected to internet', style: TextStyle(fontFamily: 'Roboto',),),));
        }
        return false;
      }
    } else {
      return false;
    }
  }
}
