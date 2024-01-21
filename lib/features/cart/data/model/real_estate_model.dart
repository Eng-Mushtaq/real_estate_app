class RealEstateModel {
  RealEstateModel({
    required this.data,
  });
  late final List<RealEstate> data;

  RealEstateModel.fromJson(Map<String?, dynamic> json) {
    data = List.from(json['data']).map((e) => RealEstate.fromJson(e)).toList();
  }

  Map<String?, dynamic> toJson() {
    final _data = <String?, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class RealEstate {
  RealEstate({
    required this.id,
    required this.unitTypeId,
    required this.unitType,
    required this.annualRent,
    required this.currencyCode,
    required this.locationDescription,
    required this.lang,
    required this.lat,
    this.createdAt,
    this.updatedAt,
    required this.featuers,
    required this.conditions,
    required this.image,
  });
  late final int? id;
  late final String? unitTypeId;
  late final String? unitType;
  late final String? annualRent;
  late final String? currencyCode;
  late final String? locationDescription;
  late final double? lang;
  late final double? lat;
  late final String? createdAt;
  late final String? updatedAt;
  late final Featuers? featuers;
  late final Conditions? conditions;
  late final List<Images> image;

  RealEstate.fromJson(Map<String?, dynamic> json) {
    id = json['id'];
    unitTypeId = json['unit_type_id'];
    unitType = json['unit_type'];
    annualRent = json['annual_rent'];
    currencyCode = json['currency_code'];
    locationDescription = json['location_description'];
    lang = json['lang'];
    lat = json['lat'];
    createdAt = null;
    updatedAt = null;
    featuers =
        json['featuers'] != null ? Featuers.fromJson(json['featuers']) : null;
    conditions = json['conditions'] != null
        ? Conditions.fromJson(json['conditions'])
        : null;
    image = List.from(json['image']).map((e) => Images.fromJson(e)).toList();
    print('////////////////////////');
    print(image.length);
  }

  Map<String?, dynamic> toJson() {
    final _data = <String?, dynamic>{};
    _data['id'] = id;
    _data['unit_type_id'] = unitTypeId;
    _data['unit_type'] = unitType;
    _data['annual_rent'] = annualRent;
    _data['currency_code'] = currencyCode;
    _data['location_description'] = locationDescription;
    _data['lang'] = lang;
    _data['lat'] = lat;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['featuers'] = featuers;
    _data['conditions'] = conditions;
    _data['image'] = image.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Featuers {
  Featuers({
    required this.id,
    required this.realEstateId,
    required this.roomsCount,
    required this.pathroomCount,
    required this.salonCount,
    this.kitchenCount,
    required this.hasParking,
    required this.parkingCount,
    required this.realEstateDescription,
    required this.realEstateEquipment,
    this.createdAt,
    this.updatedAt,
  });
  late final int? id;
  late final int? realEstateId;
  late final int? roomsCount;
  late final int? pathroomCount;
  late final int? salonCount;
  late final int? kitchenCount;
  late final int? hasParking;
  late final int? parkingCount;
  late final String? realEstateDescription;
  late final String? realEstateEquipment;
  late final String? createdAt;
  late final String? updatedAt;

  Featuers.fromJson(Map<String?, dynamic> json) {
    id = json['id'];
    realEstateId = json['real_estate_id'];
    roomsCount = json['rooms_count'];
    pathroomCount = json['pathroom_count'];
    salonCount = json['salon_count'];
    kitchenCount = null;
    hasParking = json['has_parking'];
    parkingCount = json['parking_count'];
    realEstateDescription = json['real_estate_description'];
    realEstateEquipment = json['real_estate_equipment'];
    createdAt = null;
    updatedAt = null;
  }

  Map<String?, dynamic> toJson() {
    final _data = <String?, dynamic>{};
    _data['id'] = id;
    _data['real_estate_id'] = realEstateId;
    _data['rooms_count'] = roomsCount;
    _data['pathroom_count'] = pathroomCount;
    _data['salon_count'] = salonCount;
    _data['kitchen_count'] = kitchenCount;
    _data['has_parking'] = hasParking;
    _data['parking_count'] = parkingCount;
    _data['real_estate_description'] = realEstateDescription;
    _data['real_estate_equipment'] = realEstateEquipment;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Conditions {
  Conditions({
    required this.id,
    required this.realEstateId,
    required this.insurance,
    required this.startContract,
    required this.endContract,
    required this.financialResponsibilities,
    required this.residentialUse,
    required this.maintenanceAndRepairs,
    required this.cancellationTerms,
    this.residentialClass,
    this.createdAt,
    this.updatedAt,
  });
  late final int? id;
  late final int? realEstateId;
  late final String? insurance;
  late final String? startContract;
  late final String? endContract;
  late final String? financialResponsibilities;
  late final String? residentialUse;
  late final String? maintenanceAndRepairs;
  late final String? cancellationTerms;
  late final String? residentialClass;
  late final String? createdAt;
  late final String? updatedAt;

  Conditions.fromJson(Map<String?, dynamic> json) {
    id = json['id'];
    realEstateId = json['real_estate_id'];
    insurance = json['insurance'];
    startContract = json['start_contract'];
    endContract = json['end_contract'];
    financialResponsibilities = json['financial_responsibilities'];
    residentialUse = json['residential_use'];
    maintenanceAndRepairs = json['maint?enance_and_repairs'];
    cancellationTerms = json['cancellation_terms'];
    residentialClass = null;
    createdAt = null;
    updatedAt = null;
  }

  Map<String?, dynamic> toJson() {
    final _data = <String?, dynamic>{};
    _data['id'] = id;
    _data['real_estate_id'] = realEstateId;
    _data['insurance'] = insurance;
    _data['start_contract'] = startContract;
    _data['end_contract'] = endContract;
    _data['financial_responsibilities'] = financialResponsibilities;
    _data['residential_use'] = residentialUse;
    _data['maint?enance_and_repairs'] = maintenanceAndRepairs;
    _data['cancellation_terms'] = cancellationTerms;
    _data['residential_class'] = residentialClass;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Images {
  Images({
    required this.id,
    required this.url,
    required this.imageableId,
    required this.imageableType,
    this.createdAt,
    this.updatedAt,
  });
  late final int? id;
  late final String? url;
  late final int? imageableId;
  late final String? imageableType;
  late final String? createdAt;
  late final String? updatedAt;

  Images.fromJson(Map<String?, dynamic> json) {
    id = json['id'];
    url = json['url'];
    imageableId = json['imageable_id'];
    imageableType = json['imageable_type'];
    createdAt = null;
    updatedAt = null;
  }

  Map<String?, dynamic> toJson() {
    final _data = <String?, dynamic>{};
    _data['id'] = id;
    _data['url'] = url;
    _data['imageable_id'] = imageableId;
    _data['imageable_type'] = imageableType;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}
