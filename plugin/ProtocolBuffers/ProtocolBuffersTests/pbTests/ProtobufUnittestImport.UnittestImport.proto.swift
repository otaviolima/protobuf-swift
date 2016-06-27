// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file unittest_import.proto

import Foundation
import ProtocolBuffers


public struct ProtobufUnittestImport { }

public func == (lhs: ProtobufUnittestImport.ImportMessage, rhs: ProtobufUnittestImport.ImportMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension ProtobufUnittestImport {
  public struct UnittestImportRoot {
    public static var sharedInstance : UnittestImportRoot {
     struct Static {
         static let instance : UnittestImportRoot = UnittestImportRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
      ProtobufUnittestImport.UnittestImportPublicRoot.sharedInstance.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  public enum ImportEnum:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case ImportFoo = 7
    case ImportBar = 8
    case ImportBaz = 9

    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .ImportFoo: return ".ImportFoo"
            case .ImportBar: return ".ImportBar"
            case .ImportBaz: return ".ImportBaz"
        }
    }
  }

  //Enum type declaration end 

  final public class ImportMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var d:Int32 = Int32(0)

    public private(set) var hasD:Bool = false
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasD {
        try output.writeInt32(fieldNumber:1, value:d)
      }
      try unknownFields.writeToCodedOutputStream(output:output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasD {
        serialize_size += d.computeInt32Size(fieldNumber: 1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:InputStream) throws -> Array<ProtobufUnittestImport.ImportMessage> {
      var mergedArray = Array<ProtobufUnittestImport.ImportMessage>()
      while let value = try parseFromDelimitedFromInputStream(input: input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:InputStream) throws -> ProtobufUnittestImport.ImportMessage? {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeDelimitedFromInputStream(input: input)?.build()
    }
    public class func parseFromData(data:Data) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromData(data: data, extensionRegistry:ProtobufUnittestImport.UnittestImportRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:Data, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromData(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:InputStream) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromInputStream(input: input).build()
    }
    public class func parseFromInputStream(input:InputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromInputStream(input: input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromCodedInputStream(input: input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromCodedInputStream(input: input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> ProtobufUnittestImport.ImportMessage.Builder {
      return ProtobufUnittestImport.ImportMessage.classBuilder() as! ProtobufUnittestImport.ImportMessage.Builder
    }
    public func getBuilder() -> ProtobufUnittestImport.ImportMessage.Builder {
      return classBuilder() as! ProtobufUnittestImport.ImportMessage.Builder
    }
    public override class func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessage.Builder()
    }
    public override func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessage.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittestImport.ImportMessage.Builder {
      return try ProtobufUnittestImport.ImportMessage.builderWithPrototype(prototype: self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittestImport.ImportMessage) throws -> ProtobufUnittestImport.ImportMessage.Builder {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(other: prototype)
    }
    override public func getDescription(indent:String) throws -> String {
      var output:String = ""
      if hasD {
        output += "\(indent) d: \(d) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
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

    override public class func className() -> String {
        return "ProtobufUnittestImport.ImportMessage"
    }
    override public func className() -> String {
        return "ProtobufUnittestImport.ImportMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittestImport.ImportMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittestImport.ImportMessage = ProtobufUnittestImport.ImportMessage()
      public func getMessage() -> ProtobufUnittestImport.ImportMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasD:Bool {
           get {
                return builderResult.hasD
           }
      }
      public var d:Int32 {
           get {
                return builderResult.d
           }
           set (value) {
               builderResult.hasD = true
               builderResult.d = value
           }
      }
      public func setD(value:Int32) -> ProtobufUnittestImport.ImportMessage.Builder {
        self.d = value
        return self
      }
      public func clearD() -> ProtobufUnittestImport.ImportMessage.Builder{
           builderResult.hasD = false
           builderResult.d = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      public override func clear() -> ProtobufUnittestImport.ImportMessage.Builder {
        builderResult = ProtobufUnittestImport.ImportMessage()
        return self
      }
      public override func clone() throws -> ProtobufUnittestImport.ImportMessage.Builder {
        return try ProtobufUnittestImport.ImportMessage.builderWithPrototype(prototype: builderResult)
      }
      public override func build() throws -> ProtobufUnittestImport.ImportMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittestImport.ImportMessage {
        let returnMe:ProtobufUnittestImport.ImportMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:ProtobufUnittestImport.ImportMessage) throws -> ProtobufUnittestImport.ImportMessage.Builder {
        if other == ProtobufUnittestImport.ImportMessage() {
         return self
        }
        if other.hasD {
             d = other.d
        }
        _ = try mergeUnknownFields(unknownField: other.unknownFields)
        return self
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.ImportMessage.Builder {
           return try mergeFromCodedInputStream(input: input, extensionRegistry:ExtensionRegistry())
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom: self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            d = try input.readInt32()

          default:
            if (!(try parseUnknownField(input:input, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
