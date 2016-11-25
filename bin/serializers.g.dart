// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class ParamsSerializer
// **************************************************************************

abstract class _$ParamsSerializer implements MapSerializer<Params> {
  Map toMap(Params model) {
    Map ret = new Map();
    ret["classId"] = model.classId;
    ret["users"] = model.users
        ?.map(
            (User val) => val != null ? new UserSerializer().toMap(val) : null)
        ?.toList();
    ret["headers"] = model.headers
        ?.map((Header val) =>
            val != null ? new HeaderSerializer().toMap(val) : null)
        ?.toList();
    ret["contentType"] = model.contentType;
    ret["contentData"] = model.contentData
        ?.map((Content val) =>
            val != null ? new ContentSerializer().toMap(val) : null)
        ?.toList();
    return ret;
  }

  Params fromMap(Map map, {Params model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Params) {
      model = createModel();
    }
    model.classId = map["classId"];
    model.users = (map["users"] as List<Map>)
        ?.map((Map val) => new UserSerializer().fromMap(val))
        ?.toList();
    model.headers = (map["headers"] as List<Map>)
        ?.map((Map val) => new HeaderSerializer().fromMap(val))
        ?.toList();
    model.contentType = map["contentType"];
    model.contentData = (map["contentData"] as List<Map>)
        ?.map((Map val) => new ContentSerializer().fromMap(val))
        ?.toList();
    return model;
  }
}

// **************************************************************************
// Generator: SerializerGenerator
// Target: class ContentSerializer
// **************************************************************************

abstract class _$ContentSerializer implements MapSerializer<Content> {
  Map toMap(Content model) {
    Map ret = new Map();
    ret["user_id"] = model.user_id;
    ret["category_id"] = model.category_id;
    ret["subcategory_id"] = model.subcategory_id;
    ret["package_id"] = model.package_id;
    ret["exercise_id"] = model.exercise_id;
    ret["score"] = model.score;
    ret["progress"] = model.progress;
    return ret;
  }

  Content fromMap(Map map, {Content model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Content) {
      model = createModel();
    }
    model.user_id = map["user_id"];
    model.category_id = map["category_id"];
    model.subcategory_id = map["subcategory_id"];
    model.package_id = map["package_id"];
    model.exercise_id = map["exercise_id"];
    model.score = map["score"];
    model.progress = map["progress"];
    return model;
  }
}

// **************************************************************************
// Generator: SerializerGenerator
// Target: class UserSerializer
// **************************************************************************

abstract class _$UserSerializer implements MapSerializer<User> {
  Map toMap(User model) {
    Map ret = new Map();
    ret["user_id"] = model.user_id;
    ret["user_name"] = model.user_name;
    return ret;
  }

  User fromMap(Map map, {User model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! User) {
      model = createModel();
    }
    model.user_id = map["user_id"];
    model.user_name = map["user_name"];
    return model;
  }
}

// **************************************************************************
// Generator: SerializerGenerator
// Target: class HeaderSerializer
// **************************************************************************

abstract class _$HeaderSerializer implements MapSerializer<Header> {
  Map toMap(Header model) {
    Map ret = new Map();
    ret["id"] = model.id;
    ret["name"] = model.name;
    return ret;
  }

  Header fromMap(Map map, {Header model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Header) {
      model = createModel();
    }
    model.id = map["id"];
    model.name = map["name"];
    return model;
  }
}
