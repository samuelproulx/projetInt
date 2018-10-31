// Auto-generated. Do not edit!

// (in-package capra_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingCircle = require('./BoundingCircle.js');

//-----------------------------------------------------------

class LandoltGap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gap = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('gap')) {
        this.gap = initObj.gap
      }
      else {
        this.gap = new BoundingCircle();
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LandoltGap
    // Serialize message field [gap]
    bufferOffset = BoundingCircle.serialize(obj.gap, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandoltGap
    let len;
    let data = new LandoltGap(null);
    // Deserialize message field [gap]
    data.gap = BoundingCircle.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'capra_msgs/LandoltGap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e42544d4bf49c88860dcd0d93bd66c45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    BoundingCircle gap
    float64 angle
    ================================================================================
    MSG: capra_msgs/BoundingCircle
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
    const resolved = new LandoltGap(null);
    if (msg.gap !== undefined) {
      resolved.gap = BoundingCircle.Resolve(msg.gap)
    }
    else {
      resolved.gap = new BoundingCircle()
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    return resolved;
    }
};

module.exports = LandoltGap;
