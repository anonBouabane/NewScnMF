class Getalldatamodel {
  int? customerId;
  String? profilePicture;
  String? gender;
  String? firstName;
  String? lastName;
  String? fullName;
  int? age;
  String? dateBirth;
  String? customerNationality;
  String? customerJob;
  String? customerJobLocation;
  int? provinceId;
  int? districtId;
  String? villageNamge;
  String? houseUnit;
  String? houseNumber;
  String? phoneNumber;
  String? whatsAppNumber;
  String? houseOwnerCategory;
  int? liveTimeValues;
  String? liveTimeType;
  int? houseOwnerStatus;
  int? customerStatus;
  int? assignedBy;
  Null? addBy;
  String? addDate;
  int? customerUserId;

  Getalldatamodel(
      {this.customerId,
      this.profilePicture,
      this.gender,
      this.firstName,
      this.lastName,
      this.fullName,
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
      this.assignedBy,
      this.addBy,
      this.addDate,
      this.customerUserId});

  Getalldatamodel.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    profilePicture = json['profile_picture'];
    gender = json['gender'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    fullName = json['full_name'];
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
    assignedBy = json['assigned_by'];
    addBy = json['add_by'];
    addDate = json['add_date'];
    customerUserId = json['customer_user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['profile_picture'] = this.profilePicture;
    data['gender'] = this.gender;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['full_name'] = this.fullName;
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
    data['assigned_by'] = this.assignedBy;
    data['add_by'] = this.addBy;
    data['add_date'] = this.addDate;
    data['customer_user_id'] = this.customerUserId;
    return data;
  }
}
