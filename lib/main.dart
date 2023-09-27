import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:random/service/preference_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:random/style/themes.dart';
import 'package:random/ui/home_page.dart';
import 'l10n/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var service = PreferenceService();
    var locale = service.getLang();
    Get.updateLocale(locale);
    return GetMaterialApp(
      title: 'Demo',
      supportedLocales: L10n.all,
      locale: Get.locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: MyTheme.light,
      darkTheme: MyTheme.night,
      themeMode: PreferenceService().theme,
      home: HomePage(),
    );
  }
}
