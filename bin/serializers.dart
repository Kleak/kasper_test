library serializers;

import 'package:jaguar_serializer/serializer.dart';

import 'models.dart';

part 'serializers.g.dart';

@GenSerializer()
@ProvideSerializers(const <Type, Type>{
  Content: ContentSerializer,
  User: UserSerializer,
  Header: HeaderSerializer
})
class ParamsSerializer extends Object
    with _$ParamsSerializer, JsonMixin
    implements MapSerializer<Params>, JsonMixin {
  Params createModel() => new Params();

  ParamsSerializer();
}

@GenSerializer()
class ContentSerializer extends Object
    with _$ContentSerializer, JsonMixin
    implements MapSerializer<Content>, JsonMixin {
  Content createModel() => new Content();

  ContentSerializer();
}

@GenSerializer()
class UserSerializer extends Object
    with _$UserSerializer, JsonMixin
    implements MapSerializer<User>, JsonMixin {
  User createModel() => new User();

  UserSerializer();
}

@GenSerializer()
class HeaderSerializer extends Object
    with _$HeaderSerializer, JsonMixin
    implements MapSerializer<Header> {
  Header createModel() => new Header();

  HeaderSerializer();
}
