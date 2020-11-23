import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kmbr/redux/action/CombineAction.dart';
import 'AppBarCustom.dart';
import './redux/store.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      converter: (Store<>)=>,
      builder: (BuildContext context, dynamic state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBarCustom(),
          ),
          body: Column(
            children: [
              Text(store.state.loading.toString()),
              Text(store.state.searching.toString()),
              Text(store.state.currentRoute.toString()),
              Text(store.state.currentBound.toString()),
              Text(store.state.currentServiceType.toString()),
              IconButton(
                icon: Icon(Icons.arrow_circle_down),
                onPressed: () => {
                  // store.dispatch(SearchAction()),
                  StoreProvider.of<SearchAction>(context)
                      .dispatch(SearchAction()),
                },
              )
            ],
          ),
        );
      },
    );
  }
}
