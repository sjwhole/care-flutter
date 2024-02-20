//
//  Generated code. Do not modify.
//  source: subscription.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $3;

/// The user message type
class Subscription extends $pb.GeneratedMessage {
  factory Subscription({
    $core.String? id,
    $3.Timestamp? createdAt,
    $3.Timestamp? updatedAt,
    $3.Timestamp? deletedAt,
    $core.String? userId,
    $3.Timestamp? expiresAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (deletedAt != null) {
      $result.deletedAt = deletedAt;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (expiresAt != null) {
      $result.expiresAt = expiresAt;
    }
    return $result;
  }
  Subscription._() : super();
  factory Subscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Subscription', package: const $pb.PackageName(_omitMessageNames ? '' : 'subscription'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(4, _omitFieldNames ? '' : 'deletedAt', protoName: 'deletedAt', subBuilder: $3.Timestamp.create)
    ..aOS(5, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOM<$3.Timestamp>(6, _omitFieldNames ? '' : 'expiresAt', protoName: 'expiresAt', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Subscription clone() => Subscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Subscription copyWith(void Function(Subscription) updates) => super.copyWith((message) => updates(message as Subscription)) as Subscription;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Subscription create() => Subscription._();
  Subscription createEmptyInstance() => create();
  static $pb.PbList<Subscription> createRepeated() => $pb.PbList<Subscription>();
  @$core.pragma('dart2js:noInline')
  static Subscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Subscription>(create);
  static Subscription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($3.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($3.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.Timestamp get deletedAt => $_getN(3);
  @$pb.TagNumber(4)
  set deletedAt($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeletedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeletedAt() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureDeletedAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get userId => $_getSZ(4);
  @$pb.TagNumber(5)
  set userId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserId() => clearField(5);

  @$pb.TagNumber(6)
  $3.Timestamp get expiresAt => $_getN(5);
  @$pb.TagNumber(6)
  set expiresAt($3.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasExpiresAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearExpiresAt() => clearField(6);
  @$pb.TagNumber(6)
  $3.Timestamp ensureExpiresAt() => $_ensure(5);
}

class SubscriptionCreateRequest extends $pb.GeneratedMessage {
  factory SubscriptionCreateRequest({
    $core.String? userId,
    $3.Timestamp? expiresAt,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (expiresAt != null) {
      $result.expiresAt = expiresAt;
    }
    return $result;
  }
  SubscriptionCreateRequest._() : super();
  factory SubscriptionCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscriptionCreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'subscription'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'expiresAt', protoName: 'expiresAt', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionCreateRequest clone() => SubscriptionCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionCreateRequest copyWith(void Function(SubscriptionCreateRequest) updates) => super.copyWith((message) => updates(message as SubscriptionCreateRequest)) as SubscriptionCreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscriptionCreateRequest create() => SubscriptionCreateRequest._();
  SubscriptionCreateRequest createEmptyInstance() => create();
  static $pb.PbList<SubscriptionCreateRequest> createRepeated() => $pb.PbList<SubscriptionCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionCreateRequest>(create);
  static SubscriptionCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Timestamp get expiresAt => $_getN(1);
  @$pb.TagNumber(2)
  set expiresAt($3.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpiresAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpiresAt() => clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureExpiresAt() => $_ensure(1);
}

class SubscriptionList extends $pb.GeneratedMessage {
  factory SubscriptionList({
    $core.Iterable<Subscription>? subscriptions,
  }) {
    final $result = create();
    if (subscriptions != null) {
      $result.subscriptions.addAll(subscriptions);
    }
    return $result;
  }
  SubscriptionList._() : super();
  factory SubscriptionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscriptionList', package: const $pb.PackageName(_omitMessageNames ? '' : 'subscription'), createEmptyInstance: create)
    ..pc<Subscription>(1, _omitFieldNames ? '' : 'subscriptions', $pb.PbFieldType.PM, subBuilder: Subscription.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionList clone() => SubscriptionList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionList copyWith(void Function(SubscriptionList) updates) => super.copyWith((message) => updates(message as SubscriptionList)) as SubscriptionList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscriptionList create() => SubscriptionList._();
  SubscriptionList createEmptyInstance() => create();
  static $pb.PbList<SubscriptionList> createRepeated() => $pb.PbList<SubscriptionList>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionList>(create);
  static SubscriptionList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Subscription> get subscriptions => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
