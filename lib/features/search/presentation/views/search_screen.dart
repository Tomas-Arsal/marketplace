import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/search/presentation/views/widgets/labelOfSearch.dart';
import 'package:marketplace/features/search/presentation/views/widgets/listOfSearch.dart';
import '../manger/search/Cubit.dart';
import '../manger/search/CubitState.dart';



class searchScreen extends StatelessWidget {
  var TextSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewSearchSallaCubit(),
      child: BlocConsumer<NewSearchSallaCubit, NewSearchSallaState>(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, state) {
            var model = NewSearchSallaCubit.get(context);
            return Scaffold(
              appBar: AppBar(),
              // bodyOfSearch
              body: Column(
                children: [
                  labelOfSearch(model, TextSearch) ,
                  const SizedBox(
                    height: 10.0,
                  ),
                  if (state is NewGetSearchLoadingState)
                    const LinearProgressIndicator(),
                  if (state is NewGetSearchSuccessState)
                 listOfSearch(context),
                ],
              ),
            );
          }),
    );
  }
}
