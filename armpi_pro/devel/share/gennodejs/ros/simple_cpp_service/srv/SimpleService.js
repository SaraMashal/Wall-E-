// Auto-generated. Do not edit!

// (in-package simple_cpp_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SimpleServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_robot_angle = null;
      this.angle = null;
      this.clock = null;
      this.trash = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('current_robot_angle')) {
        this.current_robot_angle = initObj.current_robot_angle
      }
      else {
        this.current_robot_angle = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = [];
      }
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock
      }
      else {
        this.clock = [];
      }
      if (initObj.hasOwnProperty('trash')) {
        this.trash = initObj.trash
      }
      else {
        this.trash = [];
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimpleServiceRequest
    // Serialize message field [current_robot_angle]
    bufferOffset = _serializer.float64(obj.current_robot_angle, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float64(obj.angle, buffer, bufferOffset, null);
    // Serialize message field [clock]
    bufferOffset = _arraySerializer.float64(obj.clock, buffer, bufferOffset, null);
    // Serialize message field [trash]
    bufferOffset = _arraySerializer.float64(obj.trash, buffer, bufferOffset, null);
    // Serialize message field [distance]
    bufferOffset = _arraySerializer.float64(obj.distance, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimpleServiceRequest
    let len;
    let data = new SimpleServiceRequest(null);
    // Deserialize message field [current_robot_angle]
    data.current_robot_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [clock]
    data.clock = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [trash]
    data.trash = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [distance]
    data.distance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.angle.length;
    length += 8 * object.clock.length;
    length += 8 * object.trash.length;
    length += 8 * object.distance.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_cpp_service/SimpleServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '905d956f9b5c13f30da2c466d1309410';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 current_robot_angle
    float64[] angle
    float64[] clock
    float64[] trash
    float64[] distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimpleServiceRequest(null);
    if (msg.current_robot_angle !== undefined) {
      resolved.current_robot_angle = msg.current_robot_angle;
    }
    else {
      resolved.current_robot_angle = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = []
    }

    if (msg.clock !== undefined) {
      resolved.clock = msg.clock;
    }
    else {
      resolved.clock = []
    }

    if (msg.trash !== undefined) {
      resolved.trash = msg.trash;
    }
    else {
      resolved.trash = []
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = []
    }

    return resolved;
    }
};

class SimpleServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimpleServiceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [output]
    bufferOffset = _arraySerializer.float64(obj.output, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimpleServiceResponse
    let len;
    let data = new SimpleServiceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [output]
    data.output = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += 8 * object.output.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_cpp_service/SimpleServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '647fe1eb929f607c9ad9e495665a07a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    float64[] output
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimpleServiceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.output !== undefined) {
      resolved.output = msg.output;
    }
    else {
      resolved.output = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SimpleServiceRequest,
  Response: SimpleServiceResponse,
  md5sum() { return 'b403fad01eab98d2beac7b71c84eadf7'; },
  datatype() { return 'simple_cpp_service/SimpleService'; }
};
