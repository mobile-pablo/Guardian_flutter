import 'package:equatable/equatable.dart';

abstract class HomeLocalState extends Equatable {
  const HomeLocalState();

  @override
  List<Object?> get props => <Object?>[];
}

class HomeLocalNewsLoading extends HomeLocalState {
  const HomeLocalNewsLoading();
}

class HomeLocalNewsDone extends HomeLocalState {
  const HomeLocalNewsDone();
}

class HomeLocalNewsError extends HomeLocalState {
  const HomeLocalNewsError();
}
