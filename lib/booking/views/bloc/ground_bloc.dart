import 'package:flutter_bloc/flutter_bloc.dart';

import 'ground_event.dart';
import 'ground_state.dart';

class GroundBloc extends Bloc<GroundEvent, GroundState>{
  GroundBloc(): super(GroundState()){
    on<LoadGround>(_fetchGrounds);

  }
  Future<void> _fetchGrounds(LoadGround loadArticle, Emitter emit) async{
    var listOfGrounds = await state.getGrounds();
    var newState = GroundState(listOfGrounds: listOfGrounds);

    emit(newState);
  }
}