// import 'dart:convert';
// import 'package:flutter/services.dart' show rootBundle;

// Future<List<String>> loadAssetsFromFolders(List<String> folders) async {
//   final manifestContent = await rootBundle.loadString('AssetManifest.json');
//   final Map<String, dynamic> manifestMap = json.decode(manifestContent);

//   // Collect assets from all given folders
//   final imagePaths = <String>[];
//   for (final folder in folders) {
//     imagePaths.addAll(
//       manifestMap.keys.where((String key) => key.startsWith(folder)),
//     );
//   }

//   return imagePaths;
// }
