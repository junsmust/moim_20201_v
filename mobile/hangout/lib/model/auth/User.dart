
class User {

  int _seq;                  // 사용자 시퀀스
  String _id;                // 아이
  String _pw;                // 비밀번
  String _name;              // 이름
  String _tel;               // 전화 번호
  String _birth;             // 생일
  List<int> _moimSeqs = [];  // 모임 seq호

  /**
   *  namedArgument : Argument가 많을 경우 일부만 입력을 받고 싶을 때
   */
  User(
      {
        int seq,
      String id,
      String pw,
      String name,
      String tel,
      String birth,
      List<int> moimSeqs}
      ) {

   this._seq = seq;
   this._id = id;
   this._pw = pw;
   this._name = name;
   this._tel = tel;
   this._birth = birth;
   this._moimSeqs = moimSeqs;
  }

  set birth(String value) => _birth = value;
  get birth => _birth;

  get name => _name;

  set seq(int value) {
    _seq = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get pw => _pw;

  set pw(String value) {
    _pw = value;
  }

  String get tel => _tel;

  set tel(String value) {
    _tel = value;
  }

  List<int> get moimSeqs => _moimSeqs;

  set moimSeqs(List<int> value) {
    _moimSeqs = value;
  }
/**
 * dart에서는 생성자 오버라이딩이 불
 */
}

/**
 *  Person({String name, int age}) {
    this.name = name;
    this.age = age;
    }
 */
