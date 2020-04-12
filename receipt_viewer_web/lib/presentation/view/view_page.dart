import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receiptviewerweb/application/view/view_bloc.dart';
import 'package:receiptviewerweb/presentation/view/view_service_impl.dart';
import 'package:receiptviewerweb/presentation/view/widgets/view_invalid_screen.dart';
import 'package:receiptviewerweb/presentation/view/widgets/view_loading_screen.dart';
import 'package:receiptviewerweb/presentation/view/widgets/view_screen.dart';

class ViewPage extends StatelessWidget {

    final String token;

    const ViewPage({
        @required this.token,
    });

    @override
    Widget build(BuildContext context) {
        return BlocProvider<ViewBloc>(
            create: (context) =>
                ViewBloc(ViewServiceImpl(),
                    token: token
                )..add(const ViewEvent.init()),
            child: BlocBuilder<ViewBloc, ViewState>(
                builder: (context, state) {
                    return state.map(
                        loading: (state) => ViewLoadingScreen(),
                        ready: (state) => ViewScreen(
                            receipt: state.receipt,
                            onViewerAction: (action) =>
                                context.bloc<ViewBloc>().add(ViewEvent.processAction(action)),
                        ),
                        invalid: (state) => ViewInvalidScreen(
                            onReportError: () =>
                                context.bloc<ViewBloc>().add(const ViewEvent.reportError()),
                        )
                    );
                },
            )
        );
    }
}