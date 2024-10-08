import 'package:firebase_core/firebase_core.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:skribla_web/firebase_options.dart';
import 'package:skribla_web/screens/home_screen.dart';
import 'package:skribla_web/screens/privacy_screen.dart';
import 'package:skribla_web/screens/terms_screen.dart';
import 'package:skribla_web/theme/colors.dart';
import 'package:skribla_web/util/config.dart';
import 'package:skribla_web/util/context_utils.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: binding);
  setPathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.dark(
        colorScheme: flexSchemeDark,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        fontFamily: 'MoreSugarRegular',
        textTheme: Config.textTheme,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/privacy': (context) => const PrivacyScreen(),
        '/terms': (context) => const TermsScreen(),
      },
      builder: (context, child) {
        return Container(
          width: context.screenSize.width,
          color: context.theme.scaffoldBackgroundColor,
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1800),
            child: child,
          ),
        );
      },
    );
  }
}
