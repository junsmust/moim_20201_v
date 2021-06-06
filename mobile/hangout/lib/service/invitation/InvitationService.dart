import 'package:hangout/common/listItem/InvitationItem.dart';

class InvitationService {

  static InvitationService service = InvitationService();

  List<InvitationItem> _invitations = [];

  List<InvitationItem> getInvitations() {
    _invitations = [
      InvitationItem("모임 dump data1") ,
      InvitationItem("모임 dump data2") ,
      InvitationItem("모임 dump data3") ,
      InvitationItem("모임 dump data4") ,
      InvitationItem("모임 dump data5") ,
      InvitationItem("모임 dump data6") ,
      InvitationItem("모임 dump data7") ,
    ];

    return _invitations;
  }

}