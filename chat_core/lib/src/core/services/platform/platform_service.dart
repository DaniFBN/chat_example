import 'package:chat_dependencies/chat_dependencies.dart';
import 'package:flutter/foundation.dart';

import 'i_platform_service.dart';

class PlatformService implements IPlatformService {
  @override
  bool get isAndroid => Platform.isAndroid;

  @override
  bool get isIOS => Platform.isIOS;

  @override
  bool get isWeb => kIsWeb;
}
