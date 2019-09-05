
class Post {
  int userId;
  int id;
  String title;
  String body;

  Post.fromJsonMap(Map<String, dynamic> map):
    userId = map["userId"],
    id = map["id"],
    title = map["title"],
    body = map["body"];
}
