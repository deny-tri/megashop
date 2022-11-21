import 'package:final_project_salt/src/blocs/blocs.dart';
import 'package:final_project_salt/src/screens/screens.dart';
import 'package:final_project_salt/src/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) => AuthBloc(
          authRepository: RepositoryProvider.of<AuthRepository>(context),
        ),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignIn(),
          // routerConfig: router,
        ),
      ),
    );
  }
}
