class Authmodel {
  String? resultCode;
  int? idUsers;
  int? departId;
  String? fullName;
  int? roleId;
  String? accessToken;

  Authmodel(
      {this.resultCode,
      this.idUsers,
      this.departId,
      this.fullName,
      this.roleId,
      this.accessToken});

  Authmodel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    idUsers = json['id_users'];
    departId = json['depart_id'];
    fullName = json['full_name'];
    roleId = json['role_id'];
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resultCode'] = this.resultCode;
    data['id_users'] = this.idUsers;
    data['depart_id'] = this.departId;
    data['full_name'] = this.fullName;
    data['role_id'] = this.roleId;
    data['accessToken'] = this.accessToken;
    return data;
  }
}
