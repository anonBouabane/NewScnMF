class AddcustomerModel {
  String? profilePicture;
  String? gender;
  String? firstName;
  String? lastName;
  int? age;
  String? dateBirth;
  String? customerNationality;
  String? customerJob;
  String? customerJobLocation;
  String? provinceId;
  String? districtId;
  String? villageNamge;
  String? houseUnit;
  String? houseNumber;
  String? phoneNumber;
  String? whatsAppNumber;
  String? houseOwnerCategory;
  String? liveTimeValues;
  String? liveTimeType;
  String? houseOwnerStatus;
  String? customerStatus;
  String? pictureIdentifiedName;
  String? pictureNameFile;
  String? identifiedRegisterDate;
  String? identifiedExpireDate;
  String? pictureIdentifiedType;

  AddcustomerModel(
      {this.profilePicture,
      this.gender,
      this.firstName,
      this.lastName,
      this.age,
      this.dateBirth,
      this.customerNationality,
      this.customerJob,
      this.customerJobLocation,
      this.provinceId,
      this.districtId,
      this.villageNamge,
      this.houseUnit,
      this.houseNumber,
      this.phoneNumber,
      this.whatsAppNumber,
      this.houseOwnerCategory,
      this.liveTimeValues,
      this.liveTimeType,
      this.houseOwnerStatus,
      this.customerStatus,
      this.pictureIdentifiedName,
      this.pictureNameFile,
      this.identifiedRegisterDate,
      this.identifiedExpireDate,
      this.pictureIdentifiedType});

  AddcustomerModel.fromJson(Map<String, dynamic> json) {
    profilePicture = json['profile_picture'];
    gender = json['gender'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    age = json['age'];
    dateBirth = json['date_birth'];
    customerNationality = json['customer_nationality'];
    customerJob = json['customer_job'];
    customerJobLocation = json['customer_job_location'];
    provinceId = json['province_id'];
    districtId = json['district_id'];
    villageNamge = json['village_namge'];
    houseUnit = json['house_unit'];
    houseNumber = json['house_number'];
    phoneNumber = json['phone_number'];
    whatsAppNumber = json['whats_app_number'];
    houseOwnerCategory = json['house_owner_category'];
    liveTimeValues = json['live_time_values'];
    liveTimeType = json['live_time_type'];
    houseOwnerStatus = json['house_owner_status'];
    customerStatus = json['customer_status'];
    pictureIdentifiedName = json['picture_identified_name'];
    pictureNameFile = json['picture_name_file'];
    identifiedRegisterDate = json['identified_register_date'];
    identifiedExpireDate = json['identified_expire_date'];
    pictureIdentifiedType = json['picture_identified_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profile_picture'] = this.profilePicture;
    data['gender'] = this.gender;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['age'] = this.age;
    data['date_birth'] = this.dateBirth;
    data['customer_nationality'] = this.customerNationality;
    data['customer_job'] = this.customerJob;
    data['customer_job_location'] = this.customerJobLocation;
    data['province_id'] = this.provinceId;
    data['district_id'] = this.districtId;
    data['village_namge'] = this.villageNamge;
    data['house_unit'] = this.houseUnit;
    data['house_number'] = this.houseNumber;
    data['phone_number'] = this.phoneNumber;
    data['whats_app_number'] = this.whatsAppNumber;
    data['house_owner_category'] = this.houseOwnerCategory;
    data['live_time_values'] = this.liveTimeValues;
    data['live_time_type'] = this.liveTimeType;
    data['house_owner_status'] = this.houseOwnerStatus;
    data['customer_status'] = this.customerStatus;
    data['picture_identified_name'] = this.pictureIdentifiedName;
    data['picture_name_file'] = this.pictureNameFile;
    data['identified_register_date'] = this.identifiedRegisterDate;
    data['identified_expire_date'] = this.identifiedExpireDate;
    data['picture_identified_type'] = this.pictureIdentifiedType;
    return data;
  }
}
