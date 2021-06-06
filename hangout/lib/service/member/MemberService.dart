import 'package:hangout/common/listItem/MemberItem.dart';
import 'package:hangout/model/auth/User.dart';
import 'package:hangout/model/member/Member.dart';

class MemberService {
  static MemberService memberService = MemberService();

  /**
   * getMemberListByMoim
   * 해당 모임의 멤버 요청
   */
  List<Member> getMemberListByMoim(int moimSeq) {
    List<Member> memberList = [
      Member.init(MemberRole.chairman, User(seq: 1 , moimSeqs: [1,2,3] , birth: "1995-10-29" , tel: "010-9021-7325" , name: "임주영" , pw: "1111" , id: "id")),
      Member.init(MemberRole.chairman, User(seq: 1 , moimSeqs: [1,2,3] , birth: "1995-10-29" , tel: "010-9021-7325" , name: "임주영" , pw: "1111" , id: "id")) ,
      Member.init(MemberRole.chairman, User(seq: 1 , moimSeqs: [1,2,3] , birth: "1995-10-29" , tel: "010-9021-7325" , name: "임주영" , pw: "1111" , id: "id")) ,
      Member.init(MemberRole.chairman, User(seq: 1 , moimSeqs: [1,2,3] , birth: "1995-10-29" , tel: "010-9021-7325" , name: "임주영" , pw: "1111" , id: "id")) ,
      Member.init(MemberRole.chairman, User(seq: 1 , moimSeqs: [1,2,3] , birth: "1995-10-29" , tel: "010-9021-7325" , name: "임주영" , pw: "1111" , id: "id")) ,
    ];
    return memberList;
  }

}