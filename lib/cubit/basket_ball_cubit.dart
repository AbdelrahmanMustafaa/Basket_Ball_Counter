import 'package:basketball_counter/cubit/basket_ball_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketBallCubit extends Cubit<BasketBallState> {
  BasketBallCubit() : super(BasketBallInitial());

  int teamA = 0;
  int teamB = 0;
  void increasePoints(String team , int points)
  {
    team== 'A' ? teamA += points : teamB +=points ;
    emit(IncreasePointsState());
  }

  void resetPoints (){
    teamA =0 ;
    teamB =0 ;
    emit(ResetPoints());
  }

}
