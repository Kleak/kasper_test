class Params {
  String classId;
  List<User> users;
  List<Header> headers;
  String contentType;
  List<Content> contentData;

  String toString() =>
      "Params($classId $users $headers $contentType $contentData)";
}

class Content {
  String user_id;
  String category_id;
  String subcategory_id;
  String package_id;
  String exercise_id;
  String score;
  String progress;

  String toString() =>
      "Content($user_id $category_id $subcategory_id $package_id $exercise_id $score $progress)";
}

class User {
  String user_id;
  String user_name;

  String toString() => "User($user_id $user_name)";
}

class Header {
  String id;
  String name;

  String toString() => "Header($id $name)";
}
