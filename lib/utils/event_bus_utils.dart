import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

class MoreRecommendEvent{
  String title;
  String path;

  MoreRecommendEvent(this.title, this.path);
}