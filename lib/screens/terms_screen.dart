import 'package:flutter/material.dart';
import 'package:skribla_web/util/config.dart';
import 'package:skribla_web/util/constants.dart';
import 'package:skribla_web/util/context_utils.dart';
import 'package:skribla_web/widgets/default_app_bar.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: context.screenSize.width * 0.07,
          vertical: 10,
        ),
        children: [
          const DefaultAppBar(),
          Config.vGap15,
          Text('Terms of Service', style: context.textTheme.titleSmall),
          Config.vGap10,
          const Text("""Last updated: March 15, 2024

Thank you for choosing Skribla, owned by Ifeanyi Onuoha ("we", "us", "our"). Please read these Terms of Service ("Terms") carefully before using the Skribla application ("Service"). By accessing or using our Service, you agree to be bound by these Terms."""),
          Config.vGap15,
          Text('Acceptance of Terms', style: context.textTheme.titleSmall),
          Config.vGap10,
          const Text(
              'By accessing or using our Service, you confirm your agreement to be bound by these Terms. If you do not agree to these Terms, please do not use our Service.'),
          Config.vGap15,
          Text('Changes to Terms', style: context.textTheme.titleSmall),
          Config.vGap10,
          const Text(
              'We may modify these Terms at any time, and such modifications will be effective immediately upon posting the modified Terms on our Service. You agree to review the Terms periodically to be aware of such modifications and your continued access or use of the Service shall be deemed your conclusive acceptance of the modified Terms.'),
          Config.vGap15,
          Text('Prohibited Conduct and Content',
              style: context.textTheme.titleSmall),
          Config.vGap10,
          const Text('''
Skribla is committed to providing a safe and enjoyable environment for all users. As such, we have a strict policy against objectionable content and abusive behavior. Users are prohibited from:

Posting or sharing any content that is:

- Offensive, vulgar, or otherwise inappropriate for a public audience.
- Discriminatory or hateful towards any individual or group based on race, ethnicity, religion, gender, sexual orientation, disability, or any other protected characteristic.
- Harassing, threatening, or intimidating towards other users.
- Violent, graphic, or promotes harm to oneself or others.
- Sexually explicit or suggestive.

Engaging in behavior that is:

- Abusive, bullying, or intended to cause emotional distress to others.
- Spamming, trolling, or otherwise disrupting the normal flow of gameplay or conversation.
- Impersonating other users or misrepresenting your identity.
- Using cheats, exploits, or any other unauthorized tools or methods to gain an unfair advantage.

Skribla reserves the right to immediately remove any content that violates these guidelines and to suspend or permanently ban users who engage in prohibited conduct. By using Skribla, you agree to adhere to these standards and help maintain a positive community for everyone.
'''),
          Config.vGap15,
          Text('Privacy and Data Collection',
              style: context.textTheme.titleSmall),
          Config.vGap10,
          const Text(
              'We respect the privacy of our users. We collect telemetry information for the purposes of improving our product for our users. This data is collected through third-party services including Firebase, Sentry and LukeHog. For more information, please refer to our Privacy Policy.'),
          Config.vGap15,
          Text('Limitations of Liability', style: context.textTheme.titleSmall),
          Config.vGap10,
          const Text(
              'We shall not be responsible or liable for any direct, indirect, incidental, consequential or exemplary losses or damages that may be incurred by you as a result of using our Service, or as a result of any changes, data loss or corruption, cancellation, loss of access, or downtime.'),
          Config.vGap15,
          Text('Termination', style: context.textTheme.titleSmall),
          Config.vGap10,
          const Text(
              'We may terminate or suspend your access to our Service immediately, without prior notice or liability, for any reason, including without limitation if you breach these Terms. All provisions of the Terms which by their nature should survive termination shall survive termination.'),
          Config.vGap15,
          Text('Contact Us', style: context.textTheme.titleSmall),
          Config.vGap10,
          const Text("""
If you have questions or concerns about our Privacy Policy, please contact us at: ${Constants.email}

© 2024 Skribla. All rights reserved.
"""),
          Config.vGap15,
        ],
      ),
    );
  }
}
