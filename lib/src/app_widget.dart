import 'package:banco_de_sangue/src/data/repositories/candidato_repository_impl.dart';
import 'package:banco_de_sangue/src/data/services/client/client_service.dart';
import 'package:banco_de_sangue/src/data/services/client/client_service_impl.dart';
import 'package:banco_de_sangue/src/data/services/messages/result_message_service.dart';
import 'package:banco_de_sangue/src/data/services/messages/result_message_service_impl.dart';
import 'package:banco_de_sangue/src/domain/repositories/candidato_repository.dart';
import 'package:banco_de_sangue/src/ui/modules/home/controllers/candidato_controller.dart';
import 'package:banco_de_sangue/src/ui/modules/home/home_module.dart';
import 'package:banco_de_sangue/src/ui/viewmodels/candidato/candidato_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:uikit/uikit.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    return FlutterGetIt(
      bindingsBuilder: () {
        return [
          Bind.singleton<ClientService>((i) => ClientServiceImpl()),
          Bind.singleton<CandidatoRepository>(
            (i) => CandidatoRepositoryImpl(clientService: i()),
          ),
          Bind.lazySingleton<ResultMessageService>(
            (i) => ResultMessageServiceImpl(navigatorKey: navigatorKey),
          ),
          Bind.singleton(
            (i) => CandidatoViewModel(
              candidatoRepository: i(),
              resultMessageService: i(),
            ),
          ),
          Bind.singleton(
            (i) => CandidatoController(
              candidatoViewModel: i(),
            ),
          )
        ];
      },
      modules: [HomeModule()],
      builder: (context, routes, flutterGetItNavObserver) {
        return MaterialApp(
          title: 'Banco de Sangue',
          debugShowCheckedModeBanner: false,
          theme: theme,
          navigatorKey: navigatorKey,
          navigatorObservers: [flutterGetItNavObserver],
          routes: routes,
        );
      },
    );
  }
}
