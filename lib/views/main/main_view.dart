import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../state/auth/providers/auth_state_provider.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
        centerTitle: true,
      ),
      body: TextButton(
        onPressed: ref.read(authStateProvider.notifier).logOut,
        child: const Text('LogOut'),
      ),
    );
  }
}
