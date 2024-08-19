// ignore_for_file: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:skribla_web/util/config.dart';
import 'package:skribla_web/util/constants.dart';
import 'package:skribla_web/util/context_utils.dart';
import 'package:skribla_web/widgets/gradient_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final buttonStyle = FilledButton.styleFrom(
      textStyle: context.textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
    final footerTextStyle = context.textTheme.bodySmall
        ?.copyWith(decoration: TextDecoration.underline);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.screenSize.width * 0.07,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: context.screenSize.height * 0.1,
                ),
                Config.vGap15,
                GradientText(
                  'Skribla',
                  style: context.textTheme.displayLarge,
                  gradient: LinearGradient(
                    colors: [
                      context.colorScheme.primaryContainer,
                      context.colorScheme.primary,
                      context.colorScheme.primaryContainer,
                    ],
                  ),
                ),
                Config.vGap15,
                Text(
                  'draw, guess, and have fun',
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleSmall,
                ),
                Config.vGap15,
                Text(
                  'Available on',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge,
                ),
                Config.vGap30,
                Wrap(
                  spacing: 30,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    FilledButton.icon(
                      onPressed: () =>
                          html.window.open(Constants.web, '_blank'),
                      style: buttonStyle,
                      icon: const Icon(PhosphorIconsBold.globe),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('Web'),
                      ),
                    ),
                    FilledButton.icon(
                      onPressed: () =>
                          html.window.open(Constants.android, '_blank'),
                      style: buttonStyle,
                      icon: const Icon(PhosphorIconsBold.googlePlayLogo),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('Android'),
                      ),
                    ),
                    FilledButton.icon(
                      onPressed: () =>
                          html.window.open(Constants.iOS, '_blank'),
                      style: buttonStyle,
                      icon: const Icon(PhosphorIconsBold.appStoreLogo),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('iOS'),
                      ),
                    ),
                    FilledButton.icon(
                      onPressed: () =>
                          html.window.open(Constants.macOS, '_blank'),
                      style: buttonStyle,
                      icon: const Icon(PhosphorIconsBold.laptop),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('macOS'),
                      ),
                    ),
                    FilledButton.icon(
                      onPressed: null,
                      style: buttonStyle,
                      icon: const Icon(PhosphorIconsBold.windowsLogo),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('Windows (soon)'),
                      ),
                    ),
                  ],
                ),
                Config.vGap15,
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(height: 0),
          const SizedBox(height: 20),
          Wrap(
            spacing: 30,
            alignment: WrapAlignment.center,
            children: [
              Text(
                '© Ifeanyi ${DateTime.now().year}',
                style: context.textTheme.bodySmall,
              ),
              InkWell(
                onTap: () => html.window.open(Constants.github, '_blank'),
                child: Text(
                  'GitHub',
                  style: footerTextStyle,
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('/privacy'),
                child: Text(
                  'Privacy',
                  style: footerTextStyle,
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('/terms'),
                child: Text(
                  'Terms',
                  style: footerTextStyle,
                ),
              ),
              InkWell(
                onTap: () {
                  final emailUrl = Uri(
                    scheme: 'mailto',
                    path: Constants.email,
                    queryParameters: {
                      'subject': 'Skribla-Support',
                    },
                  ).toString();

                  html.window.open(emailUrl, '_blank');
                },
                child: Text(
                  'Contact',
                  style: footerTextStyle,
                ),
              ),
            ],
          ),
          Config.vGap30,
        ],
      ),
    );
  }
}
