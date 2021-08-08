import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Example:
///
///      class ExampleWidget extends StatefulWidget {
///         ExampleWidget({Key? key}) : super(key: key);
///         @override
///         _ExampleWidgetState createState() => _ExampleWidgetState();
///       }
///
///      class _ExampleWidgetState
///           extends BaseState<ExampleWidget, ExampleCubit, ExampleSate> {
/// 
///      // Don't forget initialize the cubit first
///      @override
///      void initState() {
///         cubit = ExampleCubit();
///         super.initState();
///      }
///
///      Widget builder(BuildContext context, state) => Container();
/// 
///      @override
///      void listener(BuildContext context, state) {
///      if (state is ExampleStateInitial) {
///        ... somthing code ...
///      }
///   }
/// 
/// }

abstract class BaseState<T extends StatefulWidget, G extends Cubit<S>, S>
    extends State<T> {
  @protected
  final Function(G cubit) init;

  late G cubit;

  BaseState(this.init);

  @override
  void initState() {
    super.initState();
  }

  Widget builder(BuildContext context, S state);

  void listener(BuildContext context, S state) {}

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocConsumer<G, S>(
        builder: builder,
        listener: listener,
      ),
    );
  }
}
