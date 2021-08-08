# flutter-template
It's just a Flutter template for quickly launching new projects. (BLoc, Get_it)

# Features!
- [flutter_bloc] in this template i use this library fro BLoC architecture.
- [Get_it] i use get it for implementing DI.

# How to use:
- When you want to create the new Widget with BLoC pattern with Cubit, you first need to create Cubit and State for this widget.

Example:
```
  main_page.dart
  main_cubit.dart
  main_state.dart
```
- After that in your statefull widget your state now should be extneded with BaseState.

Example: 
```
class ExampleWidget extends StatefulWidget {
         ExampleWidget({Key? key}) : super(key: key);
         @override
         _ExampleWidgetState createState() => _ExampleWidgetState();
      }

      class _ExampleWidgetState
           extends BaseState<ExampleWidget, ExampleCubit, ExampleSate> {
 
      // Don't forget initialize the cubit first
      @override
      void initState() {
         cubit = ExampleCubit();
         super.initState();
      }

      Widget builder(BuildContext context, state) => Container();
 
      @override
      void listener(BuildContext context, state) {
      if (state is ExampleStateInitial) {
        ... somthing code ...
      }
   }
 
 }
```

   [flutter_bloc]: <https://pub.dev/packages/flutter_bloc>
   [Get_it]: <https://pub.dev/packages/get_it>
