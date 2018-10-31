// Auto-generated. Do not edit!

// (in-package capra_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BoundingCircle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xcenter = null;
      this.ycenter = null;
      this.radius = null;
    }
    else {
      if (initObj.hasOwnProperty('xcenter')) {
        this.xcenter = initObj.xcenter
      }
      else {
        this.xcenter = 0;
      }
      if (initObj.hasOwnProperty('ycenter')) {
        this.ycenter = initObj.ycenter
      }
      else {
        this.ycenter = 0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingCircle
    // Serialize message field [xcenter]
    bufferOffset = _serializer.int64(obj.xcenter, buffer, bufferOffset);
    // Serialize message field [ycenter]
    bufferOffset = _serializer.int64(obj.ycenter, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float64(obj.radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingCircle
    let len;
    let data = new BoundingCircle(null);
    // Deserialize message field [xcenter]
    data.xcenter = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ycenter]
    data.ycenter = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'capra_msgs/BoundingCircle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a1ed972b142aeae81d6cad44d62a9b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 xcenter
    int64 ycenter
    float64 radius
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundingCircle(null);
    if (msg.xcenter !== undefined) {
      resolved.xcenter = msg.xcenter;
    }
    else {
      resolved.xcenter = 0
    }

    if (msg.ycenter !== undefined) {
      resolved.ycenter = msg.ycenter;
    }
    else {
      resolved.ycenter = 0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    return resolved;
    }
};

module.exports = BoundingCircle;
