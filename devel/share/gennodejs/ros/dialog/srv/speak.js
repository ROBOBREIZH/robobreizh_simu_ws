// Auto-generated. Do not edit!

// (in-package dialog.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class speakRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text_t2s = null;
    }
    else {
      if (initObj.hasOwnProperty('text_t2s')) {
        this.text_t2s = initObj.text_t2s
      }
      else {
        this.text_t2s = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speakRequest
    // Serialize message field [text_t2s]
    bufferOffset = _serializer.string(obj.text_t2s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speakRequest
    let len;
    let data = new speakRequest(null);
    // Deserialize message field [text_t2s]
    data.text_t2s = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text_t2s.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dialog/speakRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '072ffd09f62c868e11497d5fe88416e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string text_t2s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speakRequest(null);
    if (msg.text_t2s !== undefined) {
      resolved.text_t2s = msg.text_t2s;
    }
    else {
      resolved.text_t2s = ''
    }

    return resolved;
    }
};

class speakResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speakResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speakResponse
    let len;
    let data = new speakResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dialog/speakResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speakResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: speakRequest,
  Response: speakResponse,
  md5sum() { return 'cb3eeceaf06182d7c3ca6a3287af50f5'; },
  datatype() { return 'dialog/speak'; }
};
