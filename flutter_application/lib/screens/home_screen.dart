import 'package:flutter/material.dart';
import '../widgets/lesson_card.dart';
import '../widgets/animated_appearance.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 17),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Привет, Амир!',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                const Text('Твой прогресс:', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 4),
                const Text(
                  '75%',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: 0.75),
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeOut,
                    builder: (context, value, child) {
                      return LinearProgressIndicator(
                        value: value,
                        color: Colors.blue,
                        backgroundColor: Colors.grey[300],
                        minHeight: 20,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: const [
                      AnimatedAppearance(
                        delayMilliseconds: 0,
                        child: LessonCard(
                          title: 'Новые слова',
                          subtitle: 'Расширяй \nсловарный запас',
                          icon: Icons.menu_book_outlined,
                        ),
                      ),
                      SizedBox(height: 10),
                      AnimatedAppearance(
                        delayMilliseconds: 200,
                        child: LessonCard(
                          title: 'Грамматика',
                          subtitle: 'Практикуй \nправила',
                          icon: Icons.hearing_outlined,
                        ),
                      ),
                      SizedBox(height: 10),
                      AnimatedAppearance(
                        delayMilliseconds: 400,
                        child: LessonCard(
                          title: 'Аудирование',
                          subtitle: 'Понимай\nна слух',
                          icon: Icons.headphones_outlined,
                        ),
                      ),
                      SizedBox(height: 10),
                      AnimatedAppearance(
                        delayMilliseconds: 600,
                        child: LessonCard(
                          title: 'Тесты',
                          subtitle: 'Проверь\nсвои знания',
                          icon: Icons.check_circle_outline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Учиться',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star, color: Colors.blue, size: 42),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
