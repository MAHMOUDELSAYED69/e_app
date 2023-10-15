import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/helper/go_router.dart';
import '../cubits/auth_cubit/auth_cubit.dart';
import '../view/screen/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AuthCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        // initialRoute: "/",
        // onGenerateRoute: GoRouter.generateRoute,
      ),
    );
  }
}
