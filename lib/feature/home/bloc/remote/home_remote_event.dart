abstract class HomeRemoteEvent {
  const HomeRemoteEvent();
}

class GetHomeNews extends HomeRemoteEvent {
  String query;
  GetHomeNews({this.query = 'dogs'});
}
