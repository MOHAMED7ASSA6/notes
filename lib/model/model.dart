
import 'package:hive/hive.dart';
part 'model.g.dart';
@HiveType(typeId: 0)
class NetworkNote extends HiveObject {
  @HiveField(0)
   String title;
  @HiveField(1)
    String subtitle;
  @HiveField(2)
   String data;
  @HiveField(3)
      int Color;
  NetworkNote({required this.Color,required this.title,required this.subtitle,required this.data});
}
