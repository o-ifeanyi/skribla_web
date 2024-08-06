// ignore_for_file: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    final buttonStyle = ButtonStyle(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.screenSize.width * 0.07,
          vertical: 15,
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
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    FilledButton.icon(
                      onPressed: null,
                      // onPressed: () =>
                      //     html.window.open(Constants.web, '_blank'),
                      style: buttonStyle,
                      icon: const Icon(PhosphorIconsBold.globe),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('Web (soon)'),
                      ),
                    ),
                    FilledButton.icon(
                      onPressed: null,
                      style: buttonStyle,
                      icon: const Icon(PhosphorIconsBold.googlePlayLogo),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('Android (soon)'),
                      ),
                    ),
                    FilledButton.icon(
                      onPressed: null,
                      style: buttonStyle,
                      icon: const Icon(PhosphorIconsBold.appStoreLogo),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('iOS (soon)'),
                      ),
                    ),
                    FilledButton.icon(
                      onPressed: null,
                      style: buttonStyle,
                      icon: const Icon(PhosphorIconsBold.laptop),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('MacOS (soon)'),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '© Ifeanyi 2024',
                style: context.textTheme.bodySmall,
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('/privacy'),
                child: Text(
                  'Privacy',
                  style: context.textTheme.bodySmall
                      ?.copyWith(decoration: TextDecoration.underline),
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('/terms'),
                child: Text(
                  'Terms',
                  style: context.textTheme.bodySmall
                      ?.copyWith(decoration: TextDecoration.underline),
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
                  style: context.textTheme.bodySmall
                      ?.copyWith(decoration: TextDecoration.underline),
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
