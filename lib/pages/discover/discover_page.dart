import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/pages/discover/discover_banner.dart';
import 'package:new_flutter/pages/discover/discover_top_bar.dart';
import 'package:new_flutter/pages/discover/discover_tabs.dart';

class DiscoverPage extends HookWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DiscoverTopBar(),
        DiscoverBanner(),
        DiscoverTabs()
      ],
    );
  }
}
