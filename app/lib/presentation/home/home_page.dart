import 'package:content_wallet/domain/settings_repository.dart';
import 'package:content_wallet/domain/stored_token_repository.dart';
import 'package:content_wallet/presentation/home/home_navigator_impl.dart';
import 'package:content_wallet/presentation/home/widgets/home_drawer.dart';
import 'package:content_wallet/presentation/home/widgets/home_loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:content_wallet/application/home/home_bloc.dart';
import 'package:content_wallet/presentation/home/widgets/home_screen.dart';

class HomePage extends StatelessWidget {

    final String version;

    const HomePage({
        @required this.version
    });

    @override
    Widget build(BuildContext context) {
        return BlocProvider<HomeBloc>(
            create: (context) =>
                HomeBloc(
                    RepositoryProvider.of<SettingsRepository>(context),
                    RepositoryProvider.of<StoredTokenRepository>(context),
                    HomeNavigatorImpl(context)
                )..add(const HomeEvent.init()),
            child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                    return state.map(
                        loading: (loadingState) => HomeLoadingScreen(),
                        ready: (readyState) => HomeScreen(
                            drawer: HomeDrawer(
                                version: version,
                                onX0A: () =>
                                    context.bloc<HomeBloc>().add(const HomeEvent.x0AInfo()),
                                onOpenPrivacyPolicy: () =>
                                    context.bloc<HomeBloc>().add(const HomeEvent.openPrivacyPolicy()),
                                onOpenConditions: () =>
                                    context.bloc<HomeBloc>().add(const HomeEvent.openConditions()),
                                onOpenConsentReceiptSpecification: () =>
                                    context.bloc<HomeBloc>().add(const HomeEvent.openConsentReceiptSpecification()),
                            ),
                            tokens: readyState.tokensStored,
                            onOpenFile: () =>
                                context.bloc<HomeBloc>().add(const HomeEvent.openFile()),
                            onSearch: () =>
                                context.bloc<HomeBloc>().add(const HomeEvent.search()),
                            onOpenToken: (token) =>
                                context.bloc<HomeBloc>().add(HomeEvent.openToken(token)),
                        )
                    );
                },
            )
        );
    }
}