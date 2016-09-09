/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_mset.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  Author: kenton@google.com (Kenton Varda)
//   Based on original Protocol Buffers design by
//   Sanjay Ghemawat, Jeff Dean, and others.
// 
//  This file is similar to unittest_mset_wire_format.proto, but does not
//  have a TestMessageSet, so it can be downgraded to proto1.

import Protobuf


public struct ProtobufUnittest_TestMessageSetContainer: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittest_TestMessageSetContainer"}
  public var protoMessageName: String {return "TestMessageSetContainer"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "messageSet": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "message_set": 1,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = ProtobufUnittest_TestMessageSetContainer
    var unknown = ProtobufUnknownStorage()
    var _messageSet: Proto2WireformatUnittest_TestMessageSet? = nil

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeOptionalMessageField(fieldType: Proto2WireformatUnittest_TestMessageSet.self, value: &_messageSet)
      default:
        handled = false
      }
      if handled {
          return true
      } else {
          return try unknown.decodeField(setter: &setter)
      }
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _messageSet {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1, protoFieldName: "message_set", jsonFieldName: "messageSet", swiftFieldName: "messageSet")
      }
      unknown.traverse(visitor: &visitor)
    }

    var isEmpty: Bool {
      if _messageSet != nil {return false}
      if !unknown.isEmpty {return false}
      return true
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if (((_messageSet != nil && !_messageSet!.isEmpty) || (other._messageSet != nil && !other._messageSet!.isEmpty)) && (_messageSet == nil || other._messageSet == nil || _messageSet! != other._messageSet!)) {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._messageSet = _messageSet
      return clone
    }
  }

  private var _storage: _StorageClass?

  public var messageSet: Proto2WireformatUnittest_TestMessageSet? {
    get {return _storage?._messageSet}
    set {_uniqueStorage()._messageSet = newValue}
  }

  public init() {}

  public init(messageSet: Proto2WireformatUnittest_TestMessageSet? = nil)
  {
    let storage = _uniqueStorage()
    storage._messageSet = messageSet
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage?.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {return _storage?.isEmpty ?? true}

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetContainer) -> Bool {
    if let s = _storage {
      if let os = other._storage {
        return s === os || s.isEqualTo(other: os)
      }
      return isEmpty // empty storage == nil storage
    } else if let os = other._storage {
      return os.isEmpty // nil storage == empty storage
    }
    return true // Both nil, both empty
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if _storage == nil {
      _storage = _StorageClass()
    } else if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage!.copy()
    }
    return _storage!
  }
}

public struct ProtobufUnittest_TestMessageSetExtension1: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittest_TestMessageSetExtension1"}
  public var protoMessageName: String {return "TestMessageSetExtension1"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "i": 15,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "i": 15,
  ]}

  var unknown = ProtobufUnknownStorage()

  struct Extensions {

    static let Proto2WireformatUnittest_TestMessageSet_messageSetExtension = ProtobufGenericMessageExtension<ProtobufOptionalMessageField<ProtobufUnittest_TestMessageSetExtension1>, Proto2WireformatUnittest_TestMessageSet>(protoFieldNumber: 1545008, protoFieldName: "message_set_extension", jsonFieldName: "messageSetExtension", swiftFieldName: "ProtobufUnittest_TestMessageSetExtension1_messageSetExtension", defaultValue: nil)
  }

  public var i: Int32? = nil

  public init() {}

  public init(i: Int32? = nil)
  {
    self.i = i
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 15: handled = try setter.decodeOptionalField(fieldType: ProtobufInt32.self, value: &i)
    default:
      handled = false
    }
    if handled {
        return true
    } else {
        return try unknown.decodeField(setter: &setter)
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if let v = i {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 15, protoFieldName: "i", jsonFieldName: "i", swiftFieldName: "i")
    }
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if i != nil {return false}
    if !unknown.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetExtension1) -> Bool {
    if ((i != nil || other.i != nil) && (i == nil || other.i == nil || i! != other.i!)) {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

public struct ProtobufUnittest_TestMessageSetExtension2: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittest_TestMessageSetExtension2"}
  public var protoMessageName: String {return "TestMessageSetExtension2"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "str": 25,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "str": 25,
  ]}

  var unknown = ProtobufUnknownStorage()

  struct Extensions {

    static let Proto2WireformatUnittest_TestMessageSet_messageSetExtension = ProtobufGenericMessageExtension<ProtobufOptionalMessageField<ProtobufUnittest_TestMessageSetExtension2>, Proto2WireformatUnittest_TestMessageSet>(protoFieldNumber: 1547769, protoFieldName: "message_set_extension", jsonFieldName: "messageSetExtension", swiftFieldName: "ProtobufUnittest_TestMessageSetExtension2_messageSetExtension", defaultValue: nil)
  }

  public var str: String? = nil

  public init() {}

  public init(str: String? = nil)
  {
    self.str = str
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 25: handled = try setter.decodeOptionalField(fieldType: ProtobufString.self, value: &str)
    default:
      handled = false
    }
    if handled {
        return true
    } else {
        return try unknown.decodeField(setter: &setter)
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if let v = str {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: v, protoFieldNumber: 25, protoFieldName: "str", jsonFieldName: "str", swiftFieldName: "str")
    }
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if str != nil {return false}
    if !unknown.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetExtension2) -> Bool {
    if ((str != nil || other.str != nil) && (str == nil || other.str == nil || str! != other.str!)) {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

//  This message was used to generate
//  //net/proto2/python/internal/testdata/message_set_message, but is commented
//  out since it must not actually exist in code, to simulate an "unknown"
//  extension.
//  message TestMessageSetUnknownExtension {
//    extend TestMessageSet {
//      optional TestMessageSetUnknownExtension message_set_extension = 56141421;
//    }
//    optional int64 a = 1;
//  }

///   MessageSet wire format is equivalent to this.
public struct ProtobufUnittest_RawMessageSet: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittest_RawMessageSet"}
  public var protoMessageName: String {return "RawMessageSet"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "item": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "item": 1,
  ]}

  var unknown = ProtobufUnknownStorage()

  public struct Item: ProtobufGeneratedGroup {
    public var swiftClassName: String {return "ProtobufUnittest_RawMessageSet.Item"}
    public var protoMessageName: String {return "Item"}
    public var protoPackageName: String {return "protobuf_unittest"}
    public var jsonFieldNames: [String: Int] {return [
      "typeId": 2,
      "message": 3,
    ]}
    public var protoFieldNames: [String: Int] {return [
      "type_id": 2,
      "message": 3,
    ]}

    var unknown = ProtobufUnknownStorage()

    public var typeId: Int32 = 0

    public var message: [UInt8] = []

    public init() {}

    public init(typeId: Int32 = 0,
      message: [UInt8] = [])
    {
      self.typeId = typeId
      self.message = message
    }

    public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 2: handled = try setter.decodeRequiredField(fieldType: ProtobufInt32.self, value: &typeId)
      case 3: handled = try setter.decodeRequiredField(fieldType: ProtobufBytes.self, value: &message)
      default:
        handled = false
      }
      if handled {
          return true
      } else {
          return try unknown.decodeField(setter: &setter)
      }
    }

    public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: typeId, protoFieldNumber: 2, protoFieldName: "type_id", jsonFieldName: "typeId", swiftFieldName: "typeId")
      try visitor.visitSingularField(fieldType: ProtobufBytes.self, value: message, protoFieldNumber: 3, protoFieldName: "message", jsonFieldName: "message", swiftFieldName: "message")
      unknown.traverse(visitor: &visitor)
    }

    public var _protoc_generated_isEmpty: Bool {
      if typeId != 0 {return false}
      if message != [] {return false}
      if !unknown.isEmpty {return false}
      return true
    }

    public func _protoc_generated_isEqualTo(other: ProtobufUnittest_RawMessageSet.Item) -> Bool {
      if typeId != other.typeId {return false}
      if message != other.message {return false}
      if unknown != other.unknown {return false}
      return true
    }
  }

  public var item: [ProtobufUnittest_RawMessageSet.Item] = []

  public init() {}

  public init(item: [ProtobufUnittest_RawMessageSet.Item] = [])
  {
    if !item.isEmpty {
      self.item = item
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeRepeatedGroupField(fieldType: ProtobufUnittest_RawMessageSet.Item.self, value: &item)
    default:
      handled = false
    }
    if handled {
        return true
    } else {
        return try unknown.decodeField(setter: &setter)
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if !item.isEmpty {
      try visitor.visitRepeatedGroupField(value: item, protoFieldNumber: 1, protoFieldName: "item", jsonFieldName: "item", swiftFieldName: "item")
    }
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if !item.isEmpty {return false}
    if !unknown.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_RawMessageSet) -> Bool {
    if item != other.item {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

extension Proto2WireformatUnittest_TestMessageSet {
  var ProtobufUnittest_TestMessageSetExtension1_messageSetExtension: ProtobufUnittest_TestMessageSetExtension1? {
    get {return getExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.Proto2WireformatUnittest_TestMessageSet_messageSetExtension)}
    set {setExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.Proto2WireformatUnittest_TestMessageSet_messageSetExtension, value: newValue)}
  }
}

extension Proto2WireformatUnittest_TestMessageSet {
  var ProtobufUnittest_TestMessageSetExtension2_messageSetExtension: ProtobufUnittest_TestMessageSetExtension2? {
    get {return getExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.Proto2WireformatUnittest_TestMessageSet_messageSetExtension)}
    set {setExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.Proto2WireformatUnittest_TestMessageSet_messageSetExtension, value: newValue)}
  }
}

let ProtobufUnittest_UnittestMset_Extensions: ProtobufExtensionSet = [
  ProtobufUnittest_TestMessageSetExtension1.Extensions.Proto2WireformatUnittest_TestMessageSet_messageSetExtension,
  ProtobufUnittest_TestMessageSetExtension2.Extensions.Proto2WireformatUnittest_TestMessageSet_messageSetExtension
]
