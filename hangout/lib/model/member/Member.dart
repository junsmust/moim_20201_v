import 'package:hangout/model/auth/User.dart';

/**
 * 멤버 정보 , 멈버 기본 정보 및 모임 내 역
 */
class Member {
  MemberRole role;
  User userInfo;

  Member.init(
      MemberRole role , User userInfo) {

      this.role = role;
      this.userInfo = userInfo;
  }
}

enum MemberRole {
    booker            // 예약자
  , generalAffairs    // 총무
  , chairman          // 화장
  , viceChairman      // 부회장
  , normal            // 일반 회원
  , writeBySelf       // 직접입력


}
extension MemberRoleExtension on MemberRole {
  String getTitle() {
    switch (this) {
      case MemberRole.booker:
        return "예약담당자";
      case MemberRole.generalAffairs:
        return "총무";
      case MemberRole.chairman:
        return "회장";
      case MemberRole.viceChairman:
        return "부회장";
      case MemberRole.normal:
        return "일반 회원";
      case MemberRole.writeBySelf:
        return "직접입력";
    }
  }
}

