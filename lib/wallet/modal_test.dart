// AppKit Modal instance
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reown_appkit/modal/appkit_modal_impl.dart';
import 'package:reown_appkit/reown_appkit.dart';

class ModalTest extends HookWidget {
  const ModalTest({super.key});

  @override
  Widget build(BuildContext context) {
    final Future<ReownAppKit> appKitInstance = ReownAppKit.createInstance(
      projectId: '439b4f44d1b4dc9ccdd1e26739f38344',
      metadata: const PairingMetadata(
        name: 'Example App',
        description: 'Example app description',
        url: 'https://example.com/',
        icons: ['https://example.com/logo.png'],
        redirect: Redirect(
          native: 'exampleapp://',
          universal: 'https://reown.com/exampleapp',
          linkMode: true | false,
        ),
      ),
    );

    return Column(
      children: [
        FilledButton(
          onPressed: () async {
            var result = await appKitInstance;

            final appKitModal = ReownAppKitModal(
              context: context,
              appKit: result,
              projectId: '439b4f44d1b4dc9ccdd1e26739f38344',
            );

            AppKitModalConnectButton(appKit: appKitModal);
          },
          child: Text("Press"),
        ),
      ],
    );
  }
}
