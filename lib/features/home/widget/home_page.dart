import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hiddify/features/home/widget/connection_button.dart';
import 'package:hiddify/features/proxy/active/active_proxy_delay_indicator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A1A),
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.6),
            radius: 1.2,
            colors: [Color(0xFF1A0A3A), Color(0xFF0A0A1A)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF7C3AED), Color(0xFF4F46E5)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.shield_rounded, color: Colors.white, size: 18),
                        ),
                        const Gap(10),
                        const Text(
                          'NexVPN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A1A2E),
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFF2E2E4E), width: 0.5),
                      ),
                      child: const Icon(Icons.person_outline_rounded, color: Color(0xFF7C7CAA), size: 18),
                    ),
                  ],
                ),
              ),

              // Main content
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Connection button with rings
                    const ConnectionButton(),
                    const Gap(8),
                    const ActiveProxyDelayIndicator(),
                    const Gap(48),
                  ],
                ),
              ),

              // Bottom server card
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  children: [
                    // Server card
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0F0F24),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFF1E1E3A), width: 0.5),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Лучший сервер', style: TextStyle(color: Color(0xFF6B6B9A), fontSize: 12)),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1E0A4E),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text('Авто', style: TextStyle(color: Color(0xFF7C3AED), fontSize: 11)),
                              ),
                            ],
                          ),
                          const Gap(12),
                          Row(
                            children: [
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1A1A2E),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(child: Text('🇩🇪', style: TextStyle(fontSize: 20))),
                              ),
                              const Gap(10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Германия',
                                      style: TextStyle(
                                        color: Color(0xFFE2E2F0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text('12 ms · Отличный', style: TextStyle(color: Color(0xFF4ADE80), fontSize: 11)),
                                  ],
                                ),
                              ),
                              const Icon(Icons.chevron_right_rounded, color: Color(0xFF3D3D6E)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    // Speed row
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0F0F24),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: const Color(0xFF1E1E3A), width: 0.5),
                            ),
                            child: const Column(
                              children: [
                                Icon(Icons.arrow_downward_rounded, color: Color(0xFF4ADE80), size: 18),
                                Gap(4),
                                Text(
                                  '0 MB/s',
                                  style: TextStyle(color: Color(0xFFE2E2F0), fontSize: 12, fontWeight: FontWeight.w500),
                                ),
                                Text('Входящий', style: TextStyle(color: Color(0xFF6B6B9A), fontSize: 10)),
                              ],
                            ),
                          ),
                        ),
                        const Gap(10),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0F0F24),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: const Color(0xFF1E1E3A), width: 0.5),
                            ),
                            child: const Column(
                              children: [
                                Icon(Icons.arrow_upward_rounded, color: Color(0xFF818CF8), size: 18),
                                Gap(4),
                                Text(
                                  '0 MB/s',
                                  style: TextStyle(color: Color(0xFFE2E2F0), fontSize: 12, fontWeight: FontWeight.w500),
                                ),
                                Text('Исходящий', style: TextStyle(color: Color(0xFF6B6B9A), fontSize: 10)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Tab bar
              Container(
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: Color(0xFF1E1E3A), width: 0.5)),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _TabItem(icon: Icons.home_rounded, label: 'Главная', active: true),
                    _TabItem(icon: Icons.dns_rounded, label: 'Серверы', active: false),
                    _TabItem(icon: Icons.workspace_premium_rounded, label: 'Premium', active: false),
                    _TabItem(icon: Icons.settings_rounded, label: 'Настройки', active: false),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const _TabItem({required this.icon, required this.label, required this.active});

  @override
  Widget build(BuildContext context) {
    final color = active ? const Color(0xFF7C3AED) : const Color(0xFF3D3D6E);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 22),
        const Gap(2),
        Text(label, style: TextStyle(color: color, fontSize: 10)),
      ],
    );
  }
}

class AppVersionLabel extends HookConsumerWidget {
  const AppVersionLabel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox();
  }
}
