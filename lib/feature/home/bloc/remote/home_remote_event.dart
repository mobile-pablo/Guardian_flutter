abstract class HomeRemoteEvent {
  const HomeRemoteEvent();
}

class GetHomeNewsEvent extends HomeRemoteEvent {
  String query;
  GetHomeNewsEvent({this.query = ''});
}
