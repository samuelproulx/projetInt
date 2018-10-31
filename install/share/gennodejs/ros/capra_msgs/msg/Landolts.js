// Auto-generated. Do not edit!

// (in-package capra_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LandoltGap = require('./LandoltGap.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Landolts {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.image_header = null;
      this.gaps = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('image_header')) {
        this.image_header = initObj.image_header
      }
      else {
        this.image_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gaps')) {
        this.gaps = initObj.gaps
      }
      else {
        this.gaps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Landolts
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [image_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.image_header, buffer, bufferOffset);
    // Serialize message field [gaps]
    // Serialize the length for message field [gaps]
    bufferOffset = _serializer.uint32(obj.gaps.length, buffer, bufferOffset);
    obj.gaps.forEach((val) => {
      bufferOffset = LandoltGap.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Landolts
    let len;
    let data = new Landolts(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_header]
    data.image_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gaps]
    // Deserialize array length for message field [gaps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gaps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gaps[i] = LandoltGap.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.Header.getMessageSize(object.image_header);
    length += 32 * object.gaps.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'capra_msgs/Landolts';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4d34173e5d16e0e6f807e704e0367f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Header image_header
    LandoltGap[] gaps
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: capra_msgs/LandoltGap
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
    const resolved = new Landolts(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.image_header !== undefined) {
      resolved.image_header = std_msgs.msg.Header.Resolve(msg.image_header)
    }
    else {
      resolved.image_header = new std_msgs.msg.Header()
    }

    if (msg.gaps !== undefined) {
      resolved.gaps = new Array(msg.gaps.length);
      for (let i = 0; i < resolved.gaps.length; ++i) {
        resolved.gaps[i] = LandoltGap.Resolve(msg.gaps[i]);
      }
    }
    else {
      resolved.gaps = []
    }

    return resolved;
    }
};

module.exports = Landolts;
