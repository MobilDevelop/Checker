import 'package:checker/application/app_manager/app_manager_cubit.dart';
import 'package:checker/presentation/assets/theme/app_theme.dart';
import 'package:checker/presentation/components/error_view.dart';
import 'package:checker/presentation/routes/coordinator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:requests_inspector/requests_inspector.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppManagerCubit, AppManagerState>(
        builder: (context, state) {
      if (state is AppManagerLoading) {
        return const CircularProgressIndicator();
      } else if (state is AppManagerError) {
        return ErrorView(error: state.error);
      } else {
        return RequestsInspector(
          // enabled: PlatformInfo.isDebugMode,
          showInspectorOn: ShowInspectorOn.LongPress,
          child: MaterialApp.router(
            title: 'Checker',
            theme: AppTheme.data,
            themeMode: AppTheme.themeMode,
            locale: context.locale,
            debugShowCheckedModeBanner: false, 
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
            routerDelegate: router.routerDelegate,
            builder: EasyLoading.init()
          )
        );
      }
    });
  }
}
