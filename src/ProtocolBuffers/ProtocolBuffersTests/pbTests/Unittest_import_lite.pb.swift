// Generated by the protocol buffer compiler.  DO NOT EDIT!

import Foundation
import ProtocolBuffers

internal struct UnittestImportLiteRoot {
  internal static var sharedInstance : UnittestImportLiteRoot {
   struct Static {
       static let instance : UnittestImportLiteRoot = UnittestImportLiteRoot()
   }
   return Static.instance
  }
  internal var extensionRegistry:ExtensionRegistry

  init() {
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(extensionRegistry)
    UnittestImportPublicLiteRoot.sharedInstance.registerAllExtensions(extensionRegistry)
  }
  internal func registerAllExtensions(registry:ExtensionRegistry) {
  }
}



//Enum type declaration start 

internal enum ImportEnumLite:Int32 {
  case ImportLiteFoo = 7
  case ImportLiteBar = 8
  case ImportLiteBaz = 9

  internal static func IsValidValue(value:Int32) ->Bool {
      if let check = ImportEnumLite(rawValue:value) {
          return true
      }
      return false
  }
}



//Enum type declaration end 

internal func == (lhs: ImportMessageLite, rhs: ImportMessageLite) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

final internal class ImportMessageLite : GeneratedMessage {
  private(set) var hasD:Bool = false
  private(set) var d:Int32 = Int32(0)

  required internal init() {
       super.init()
  }
  override internal func isInitialized() -> Bool {
   return true
  }
  override internal func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasD {
      output.writeInt32(1, value:d)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override internal func serializedSize() -> Int32 {
    var serialize_size:Int32 = memoizedSerializedSize
    if serialize_size != -1 {
     return serialize_size
    }

    serialize_size = 0
    if hasD {
      serialize_size += d.computeInt32Size(1)
    }
    serialize_size += unknownFields.serializedSize()
    memoizedSerializedSize = serialize_size
    return serialize_size
  }
  internal class func parseFromData(data:NSData) -> ImportMessageLite {
    return ImportMessageLite.builder().mergeFromData(data, extensionRegistry:UnittestImportLiteRoot.sharedInstance.extensionRegistry).build()
  }
  internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> ImportMessageLite {
    return ImportMessageLite.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromInputStream(input:NSInputStream) -> ImportMessageLite {
    return ImportMessageLite.builder().mergeFromInputStream(input).build()
  }
  internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->ImportMessageLite {
    return ImportMessageLite.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream) -> ImportMessageLite {
    return ImportMessageLite.builder().mergeFromCodedInputStream(input).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ImportMessageLite {
    return ImportMessageLite.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func builder() -> ImportMessageLiteBuilder {
    return ImportMessageLite.classBuilder() as ImportMessageLiteBuilder
  }
  internal func builder() -> ImportMessageLiteBuilder {
    return classBuilder() as ImportMessageLiteBuilder
  }
  internal override class func classBuilder() -> MessageBuilder {
    return ImportMessageLiteBuilder()
  }
  internal override func classBuilder() -> MessageBuilder {
    return ImportMessageLite.builder()
  }
  internal func toBuilder() -> ImportMessageLiteBuilder {
    return ImportMessageLite.builderWithPrototype(self)
  }
  internal class func builderWithPrototype(prototype:ImportMessageLite) -> ImportMessageLiteBuilder {
    return ImportMessageLite.builder().mergeFrom(prototype)
  }
  override internal func writeDescriptionTo(inout output:String, indent:String) {
    if hasD {
      output += "\(indent) d: \(d) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override internal var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasD {
             hashCode = (hashCode &* 31) &+ d.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override internal class func className() -> String {
      return "ImportMessageLite"
  }
  override internal func className() -> String {
      return "ImportMessageLite"
  }
  override internal func classMetaType() -> GeneratedMessage.Type {
      return ImportMessageLite.self
  }


  //Meta information declaration end

}

final internal class ImportMessageLiteBuilder : GeneratedMessageBuilder {
  private var builderResult:ImportMessageLite

  required override internal init () {
     builderResult = ImportMessageLite()
     super.init()
  }
  var hasD:Bool {
       get {
            return builderResult.hasD
       }
  }
  var d:Int32 {
       get {
            return builderResult.d
       }
       set (value) {
           builderResult.hasD = true
           builderResult.d = value
       }
  }
  func setD(value:Int32)-> ImportMessageLiteBuilder {
    self.d = value
    return self
  }
  internal func clearD() -> ImportMessageLiteBuilder{
       builderResult.hasD = false
       builderResult.d = Int32(0)
       return self
  }
  override internal var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  internal override func clear() -> ImportMessageLiteBuilder {
    builderResult = ImportMessageLite()
    return self
  }
  internal override func clone() -> ImportMessageLiteBuilder {
    return ImportMessageLite.builderWithPrototype(builderResult)
  }
  internal override func build() -> ImportMessageLite {
       checkInitialized()
       return buildPartial()
  }
  internal func buildPartial() -> ImportMessageLite {
    var returnMe:ImportMessageLite = builderResult
    return returnMe
  }
  internal func mergeFrom(other:ImportMessageLite) -> ImportMessageLiteBuilder {
    if (other == ImportMessageLite()) {
     return self
    }
    if other.hasD {
         d = other.d
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream) ->ImportMessageLiteBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ImportMessageLiteBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 8 :
        d = input.readInt32()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}


// @@protoc_insertion_point(global_scope)
