class WalletConnectException implements Exception {
  String cause;
  WalletConnectException({required this.cause});
  @override
  String toString() {
    return 'Wallet Connect Exception $cause';
  }
}

class FailedException implements Exception {
  final String message;

  FailedException(this.message);
}

class RepoException implements Exception {
  final String message;

  RepoException(this.message);
}

class NotificationPermissionException implements Exception {
  final String message;

  NotificationPermissionException(this.message);
}

class StoragePermissionException implements Exception {
  final String message;

  StoragePermissionException(this.message);
}

class BluetoothPermissionException implements Exception {
  final String message;

  BluetoothPermissionException(this.message);
}

class BatteryPermissionException implements Exception {
  final String message;

  BatteryPermissionException(this.message);
}

class BluetoothOffException implements Exception {
  final String message;

  BluetoothOffException(this.message);
}
