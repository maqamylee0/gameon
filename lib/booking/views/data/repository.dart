import '../../../service.dart';
import '../data/Ground.dart';

class GroundRepository{
  var apiService = GroundsApiService();

  Future<List<Ground>> getAllGrounds() async{
    return apiService.getAllGrounds();
  }
}