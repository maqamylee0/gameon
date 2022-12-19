import '../data/Ground.dart';
import '../data/repository.dart';

class GroundState{

  List<Ground> listOfGrounds;

  GroundState({this.listOfGrounds  = const []});

  Future<List<Ground>> getGrounds() async {
    var repo = GroundRepository();

    return await repo.getAllGrounds();
  }

}