import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receiptviewerweb/application/home/home_bloc.dart';
import 'package:receiptviewerweb/presentation/home/home_navigator_impl.dart';
import 'package:receiptviewerweb/presentation/home/widgets/home_drawer.dart';
import 'package:receiptviewerweb/presentation/home/widgets/home_loading_screen.dart';
import 'package:receiptviewerweb/presentation/home/widgets/home_screen.dart';

class HomePage extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return BlocProvider<HomeBloc>(
            create: (context) =>
                HomeBloc(HomeNavigatorImpl(context))..add(const HomeEvent.init()),
            child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                    return state.map(
                        loading: (loadingState) => HomeLoadingScreen(),
                        ready: (readyState) => HomeScreen(
                            drawer: HomeDrawer(
                                version: readyState.version,
                                onX0A: () =>
                                    context.bloc<HomeBloc>().add(const HomeEvent.x0AInfo()),
                                onOpenPrivacyPolicy: () =>
                                    context.bloc<HomeBloc>().add(const HomeEvent.openPrivacyPolicy()),
                                onOpenConditions: () =>
                                    context.bloc<HomeBloc>().add(const HomeEvent.openConditions()),
                                onOpenConsentReceiptSpecification: () =>
                                    context.bloc<HomeBloc>().add(const HomeEvent.openConsentReceiptSpecification()),
                            ),
                            onSearchFile: () =>
                                context.bloc<HomeBloc>().add(const HomeEvent.searchFile()),
                            onGoRoot: () =>
                                context.bloc<HomeBloc>().add(const HomeEvent.goRoot()),
                        )
                    );
                },
            )
        );
    }
}