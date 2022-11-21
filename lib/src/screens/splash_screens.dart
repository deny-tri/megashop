part of 'screens.dart';

class SpalshScreens extends StatelessWidget {
  const SpalshScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack(
        [
          'Mega Shop'.text.bold.make(),
        ],
      ),
    );
  }
}
