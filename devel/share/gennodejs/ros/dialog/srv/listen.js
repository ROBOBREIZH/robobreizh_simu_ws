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

class listenRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.send = null;
    }
    else {
      if (initObj.hasOwnProperty('send')) {
        this.send = initObj.send
      }
      else {
        this.send = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type listenRequest
    // Serialize message field [send]
    bufferOffset = _serializer.string(obj.send, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type listenRequest
    let len;
    let data = new listenRequest(null);
    // Deserialize message field [send]
    data.send = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.send.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dialog/listenRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b903a44705b40a7116d3d10341f60dfc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string send
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new listenRequest(null);
    if (msg.send !== undefined) {
      resolved.send = msg.send;
    }
    else {
      resolved.send = ''
    }

    return resolved;
    }
};

class listenResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text_s2t = null;
    }
    else {
      if (initObj.hasOwnProperty('text_s2t')) {
        this.text_s2t = initObj.text_s2t
      }
      else {
        this.text_s2t = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type listenResponse
    // Serialize message field [text_s2t]
    bufferOffset = _arraySerializer.string(obj.text_s2t, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type listenResponse
    let len;
    let data = new listenResponse(null);
    // Deserialize message field [text_s2t]
    data.text_s2t = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.text_s2t.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dialog/listenResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '915e40f1ff1c642978a0615da0edef22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] text_s2t
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new listenResponse(null);
    if (msg.text_s2t !== undefined) {
      resolved.text_s2t = msg.text_s2t;
    }
    else {
      resolved.text_s2t = []
    }

    return resolved;
    }
};

module.exports = {
  Request: listenRequest,
  Response: listenResponse,
  md5sum() { return '097728e714f8ef53acfa9772a3a81d05'; },
  datatype() { return 'dialog/listen'; }
};
