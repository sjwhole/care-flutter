//
//  Generated code. Do not modify.
//  source: subscription.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use subscriptionDescriptor instead')
const Subscription$json = {
  '1': 'Subscription',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'createdAt', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'updatedAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    {'1': 'deletedAt', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'deletedAt'},
    {'1': 'userId', '3': 5, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'expiresAt', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
  ],
};

/// Descriptor for `Subscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionDescriptor = $convert.base64Decode(
    'CgxTdWJzY3JpcHRpb24SDgoCaWQYASABKAlSAmlkEjgKCWNyZWF0ZWRBdBgCIAEoCzIaLmdvb2'
    'dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI4Cgl1cGRhdGVkQXQYAyABKAsyGi5n'
    'b29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl1cGRhdGVkQXQSOAoJZGVsZXRlZEF0GAQgASgLMh'
    'ouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZGVsZXRlZEF0EhYKBnVzZXJJZBgFIAEoCVIG'
    'dXNlcklkEjgKCWV4cGlyZXNBdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCW'
    'V4cGlyZXNBdA==');

@$core.Deprecated('Use subscriptionCreateRequestDescriptor instead')
const SubscriptionCreateRequest$json = {
  '1': 'SubscriptionCreateRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'expiresAt', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
  ],
};

/// Descriptor for `SubscriptionCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionCreateRequestDescriptor = $convert.base64Decode(
    'ChlTdWJzY3JpcHRpb25DcmVhdGVSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEjgKCW'
    'V4cGlyZXNBdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWV4cGlyZXNBdA==');

@$core.Deprecated('Use subscriptionListDescriptor instead')
const SubscriptionList$json = {
  '1': 'SubscriptionList',
  '2': [
    {'1': 'subscriptions', '3': 1, '4': 3, '5': 11, '6': '.subscription.Subscription', '10': 'subscriptions'},
  ],
};

/// Descriptor for `SubscriptionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionListDescriptor = $convert.base64Decode(
    'ChBTdWJzY3JpcHRpb25MaXN0EkAKDXN1YnNjcmlwdGlvbnMYASADKAsyGi5zdWJzY3JpcHRpb2'
    '4uU3Vic2NyaXB0aW9uUg1zdWJzY3JpcHRpb25z');

