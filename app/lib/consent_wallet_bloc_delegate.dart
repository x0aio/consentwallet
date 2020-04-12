import 'package:bloc/bloc.dart';

class ConsentWalletBlocDelegate extends BlocDelegate {

    @override
    void onEvent(Bloc bloc, Object event) {
        super.onEvent(bloc, event);
    }

    @override
    void onTransition(Bloc bloc, Transition transition) {
        super.onTransition(bloc, transition);
        print("${transition.event} => ${transition.nextState}");
    }

    @override
    void onError(Bloc bloc, Object error, StackTrace stacktrace) {
        super.onError(bloc, error, stacktrace);
        print(error);
        print(stacktrace);
    }
}