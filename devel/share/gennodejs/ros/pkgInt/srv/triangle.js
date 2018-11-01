// Auto-generated. Do not edit!

// (in-package pkgInt.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class triangleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p1 = null;
      this.p2 = null;
      this.p3 = null;
    }
    else {
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('p2')) {
        this.p2 = initObj.p2
      }
      else {
        this.p2 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('p3')) {
        this.p3 = initObj.p3
      }
      else {
        this.p3 = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type triangleRequest
    // Serialize message field [p1]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.p1, buffer, bufferOffset);
    // Serialize message field [p2]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.p2, buffer, bufferOffset);
    // Serialize message field [p3]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.p3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type triangleRequest
    let len;
    let data = new triangleRequest(null);
    // Deserialize message field [p1]
    data.p1 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [p2]
    data.p2 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [p3]
    data.p3 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pkgInt/triangleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '480a47a04a0e0681cafbb5fbe734f2d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point p1
    geometry_msgs/Point p2
    geometry_msgs/Point p3
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new triangleRequest(null);
    if (msg.p1 !== undefined) {
      resolved.p1 = geometry_msgs.msg.Point.Resolve(msg.p1)
    }
    else {
      resolved.p1 = new geometry_msgs.msg.Point()
    }

    if (msg.p2 !== undefined) {
      resolved.p2 = geometry_msgs.msg.Point.Resolve(msg.p2)
    }
    else {
      resolved.p2 = new geometry_msgs.msg.Point()
    }

    if (msg.p3 !== undefined) {
      resolved.p3 = geometry_msgs.msg.Point.Resolve(msg.p3)
    }
    else {
      resolved.p3 = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class triangleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.aire = null;
    }
    else {
      if (initObj.hasOwnProperty('aire')) {
        this.aire = initObj.aire
      }
      else {
        this.aire = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type triangleResponse
    // Serialize message field [aire]
    bufferOffset = _serializer.float64(obj.aire, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type triangleResponse
    let len;
    let data = new triangleResponse(null);
    // Deserialize message field [aire]
    data.aire = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pkgInt/triangleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '556d735e77d3ab8a36cc46e0c4315903';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 aire
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new triangleResponse(null);
    if (msg.aire !== undefined) {
      resolved.aire = msg.aire;
    }
    else {
      resolved.aire = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: triangleRequest,
  Response: triangleResponse,
  md5sum() { return '4e625ac4adc31256378a5e593887ac09'; },
  datatype() { return 'pkgInt/triangle'; }
};
