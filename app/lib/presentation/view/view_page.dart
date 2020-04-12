import 'package:content_wallet/domain/stored_token_repository.dart';
import 'package:content_wallet/presentation/view/widgets/view_invalid_screen.dart';
import 'package:content_wallet/presentation/view/widgets/view_loading_screen.dart';
import 'package:content_wallet/presentation/view/view_service_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:content_wallet/application/view/view_bloc.dart';
import 'package:content_wallet/presentation/view/widgets/view_screen.dart';

class ViewPage extends StatefulWidget {

    final String token;

    const ViewPage({
        @required this.token,
    });

    @override
    _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {

    ViewBloc _bloc;

    @override
    void initState() {
        super.initState();
        _bloc = ViewBloc(
            RepositoryProvider.of<StoredTokenRepository>(context),
            ViewServiceImpl(),
            token: widget.token
        );
        _bloc.add(const ViewEvent.init());
    }

    @override
    Widget build(BuildContext context) {
        return BlocProvider<ViewBloc>(
            create: (context) => _bloc,
            child: BlocBuilder<ViewBloc, ViewState>(
                builder: (context, state) {
                    return state.map(
                        loading: (state) => ViewLoadingScreen(),
                        ready: (state) => ViewScreen(
                            receipt: state.receipt,
                            isSaved: state.isSaved,
                            onShare: () => _bloc.add(const ViewEvent.share()),
                            onSave: () => _bloc.add(const ViewEvent.save()),
                            onDelete: () => _bloc.add(const ViewEvent.delete()),
                            onViewerAction: (action) => _bloc.add(ViewEvent.viewerAction(action)),
                        ),
                        invalid: (state) => ViewInvalidScreen(
                            onReportError: () => _bloc.add(const ViewEvent.reportError()),
                        )
                    );
                },
            )
        );
    }
}