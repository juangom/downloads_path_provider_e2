# downloads_path_provider_e2

Like [downloads_path_provider] (https://github.com/nplaceit/downloads_path_provider). But with flutter embedding 2

## Installation

* Add downloads_path_provider_e2 to your ```pubspec.yaml```
* Add ```<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />``` to your ```Manifest.xml```



Example:

```
import 'package:downloads_path_provider_e2.dart'
final String dir = DownloadsPathProviderE2.getDownloadsDirectory;
```