class Getalldatamodel {
  int? customerId;
  String? profilePicture;
  String? fullName;
  int? age;
  String? phoneNumber;
  String? whatsAppNumber;
  String? customerJob;
  String? customerJobLocation;
  String? houseUnit;
  String? houseNumber;
  String? villageNamge;
  String? districtsName;
  String? provinceName;

  Getalldatamodel(
      {this.customerId,
      this.profilePicture,
      this.fullName,
      this.age,
      this.phoneNumber,
      this.whatsAppNumber,
      this.customerJob,
      this.customerJobLocation,
      this.houseUnit,
      this.houseNumber,
      this.villageNamge,
      this.districtsName,
      this.provinceName});

  Getalldatamodel.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    profilePicture = json['profile_picture'];
    fullName = json['full_name'];
    age = json['age'];
    phoneNumber = json['phone_number'];
    whatsAppNumber = json['whats_app_number'];
    customerJob = json['customer_job'];
    customerJobLocation = json['customer_job_location'];
    houseUnit = json['house_unit'];
    houseNumber = json['house_number'];
    villageNamge = json['village_namge'];
    districtsName = json['districts_name'];
    provinceName = json['province_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['profile_picture'] = this.profilePicture;
    data['full_name'] = this.fullName;
    data['age'] = this.age;
    data['phone_number'] = this.phoneNumber;
    data['whats_app_number'] = this.whatsAppNumber;
    data['customer_job'] = this.customerJob;
    data['customer_job_location'] = this.customerJobLocation;
    data['house_unit'] = this.houseUnit;
    data['house_number'] = this.houseNumber;
    data['village_namge'] = this.villageNamge;
    data['districts_name'] = this.districtsName;
    data['province_name'] = this.provinceName;
    return data;
  }
}
