// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_task.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable, no_leading_underscores_for_local_identifiers

extension GetProjectTaskCollection on Isar {
  IsarCollection<ProjectTask> get projectTasks => getCollection();
}

const ProjectTaskSchema = CollectionSchema(
  name: 'ProjectTask',
  schema:
      '{"name":"ProjectTask","idName":"id","properties":[{"name":"date","type":"Long"},{"name":"duration","type":"Long"},{"name":"estimate","type":"Long"},{"name":"name","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'date': 0, 'duration': 1, 'estimate': 2, 'name': 3},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _projectTaskGetId,
  setId: _projectTaskSetId,
  getLinks: _projectTaskGetLinks,
  attachLinks: _projectTaskAttachLinks,
  serializeNative: _projectTaskSerializeNative,
  deserializeNative: _projectTaskDeserializeNative,
  deserializePropNative: _projectTaskDeserializePropNative,
  serializeWeb: _projectTaskSerializeWeb,
  deserializeWeb: _projectTaskDeserializeWeb,
  deserializePropWeb: _projectTaskDeserializePropWeb,
  version: 4,
);

int? _projectTaskGetId(ProjectTask object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _projectTaskSetId(ProjectTask object, int id) {
  object.id = id;
}

List<IsarLinkBase> _projectTaskGetLinks(ProjectTask object) {
  return [];
}

void _projectTaskSerializeNative(
    IsarCollection<ProjectTask> collection,
    IsarCObject cObj,
    ProjectTask object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.date;
  final _date = value0;
  final value1 = object.duration;
  final _duration = value1;
  final value2 = object.estimate;
  final _estimate = value2;
  final value3 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_name.length) as int;
  final size = staticSize + dynamicSize;

  cObj.buffer = alloc(size);
  cObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _date);
  writer.writeLong(offsets[1], _duration);
  writer.writeLong(offsets[2], _estimate);
  writer.writeBytes(offsets[3], _name);
}

ProjectTask _projectTaskDeserializeNative(
    IsarCollection<ProjectTask> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = ProjectTask();
  object.date = reader.readDateTime(offsets[0]);
  object.duration = reader.readLong(offsets[1]);
  object.estimate = reader.readLong(offsets[2]);
  object.id = id;
  object.name = reader.readString(offsets[3]);
  return object;
}

P _projectTaskDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _projectTaskSerializeWeb(
    IsarCollection<ProjectTask> collection, ProjectTask object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'date', object.date.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'duration', object.duration);
  IsarNative.jsObjectSet(jsObj, 'estimate', object.estimate);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

ProjectTask _projectTaskDeserializeWeb(
    IsarCollection<ProjectTask> collection, dynamic jsObj) {
  final object = ProjectTask();
  object.date = IsarNative.jsObjectGet(jsObj, 'date') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'date'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.duration =
      IsarNative.jsObjectGet(jsObj, 'duration') ?? double.negativeInfinity;
  object.estimate =
      IsarNative.jsObjectGet(jsObj, 'estimate') ?? double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  return object;
}

P _projectTaskDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'date':
      return (IsarNative.jsObjectGet(jsObj, 'date') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'date'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'duration':
      return (IsarNative.jsObjectGet(jsObj, 'duration') ??
          double.negativeInfinity) as P;
    case 'estimate':
      return (IsarNative.jsObjectGet(jsObj, 'estimate') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _projectTaskAttachLinks(IsarCollection col, int id, ProjectTask object) {}

extension ProjectTaskQueryWhereSort
    on QueryBuilder<ProjectTask, ProjectTask, QWhere> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ProjectTaskQueryWhere
    on QueryBuilder<ProjectTask, ProjectTask, QWhereClause> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> idNotEqualTo(
      int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension ProjectTaskQueryFilter
    on QueryBuilder<ProjectTask, ProjectTask, QFilterCondition> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'date',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> durationEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition>
      durationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition>
      durationLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> durationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'duration',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> estimateEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'estimate',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition>
      estimateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'estimate',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition>
      estimateLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'estimate',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> estimateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'estimate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ProjectTaskQueryLinks
    on QueryBuilder<ProjectTask, ProjectTask, QFilterCondition> {}

extension ProjectTaskQueryWhereSortBy
    on QueryBuilder<ProjectTask, ProjectTask, QSortBy> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByDuration() {
    return addSortByInternal('duration', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByDurationDesc() {
    return addSortByInternal('duration', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByEstimate() {
    return addSortByInternal('estimate', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByEstimateDesc() {
    return addSortByInternal('estimate', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension ProjectTaskQueryWhereSortThenBy
    on QueryBuilder<ProjectTask, ProjectTask, QSortThenBy> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByDuration() {
    return addSortByInternal('duration', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByDurationDesc() {
    return addSortByInternal('duration', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByEstimate() {
    return addSortByInternal('estimate', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByEstimateDesc() {
    return addSortByInternal('estimate', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension ProjectTaskQueryWhereDistinct
    on QueryBuilder<ProjectTask, ProjectTask, QDistinct> {
  QueryBuilder<ProjectTask, ProjectTask, QDistinct> distinctByDate() {
    return addDistinctByInternal('date');
  }

  QueryBuilder<ProjectTask, ProjectTask, QDistinct> distinctByDuration() {
    return addDistinctByInternal('duration');
  }

  QueryBuilder<ProjectTask, ProjectTask, QDistinct> distinctByEstimate() {
    return addDistinctByInternal('estimate');
  }

  QueryBuilder<ProjectTask, ProjectTask, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<ProjectTask, ProjectTask, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension ProjectTaskQueryProperty
    on QueryBuilder<ProjectTask, ProjectTask, QQueryProperty> {
  QueryBuilder<ProjectTask, DateTime, QQueryOperations> dateProperty() {
    return addPropertyNameInternal('date');
  }

  QueryBuilder<ProjectTask, int, QQueryOperations> durationProperty() {
    return addPropertyNameInternal('duration');
  }

  QueryBuilder<ProjectTask, int, QQueryOperations> estimateProperty() {
    return addPropertyNameInternal('estimate');
  }

  QueryBuilder<ProjectTask, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ProjectTask, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
