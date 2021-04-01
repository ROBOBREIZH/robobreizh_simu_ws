// Auto-generated. Do not edit!

// (in-package dialog.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Wav {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fs = null;
      this.chl = null;
      this.chr = null;
    }
    else {
      if (initObj.hasOwnProperty('fs')) {
        this.fs = initObj.fs
      }
      else {
        this.fs = 0;
      }
      if (initObj.hasOwnProperty('chl')) {
        this.chl = initObj.chl
      }
      else {
        this.chl = [];
      }
      if (initObj.hasOwnProperty('chr')) {
        this.chr = initObj.chr
      }
      else {
        this.chr = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Wav
    // Serialize message field [fs]
    bufferOffset = _serializer.int32(obj.fs, buffer, bufferOffset);
    // Serialize message field [chl]
    bufferOffset = _arraySerializer.float32(obj.chl, buffer, bufferOffset, null);
    // Serialize message field [chr]
    bufferOffset = _arraySerializer.float32(obj.chr, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Wav
    let len;
    let data = new Wav(null);
    // Deserialize message field [fs]
    data.fs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [chl]
    data.chl = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [chr]
    data.chr = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.chl.length;
    length += 4 * object.chr.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dialog/Wav';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd12d0f67404dd8368da8a8a7e79c981';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 fs
    float32[] chl
    float32[] chr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Wav(null);
    if (msg.fs !== undefined) {
      resolved.fs = msg.fs;
    }
    else {
      resolved.fs = 0
    }

    if (msg.chl !== undefined) {
      resolved.chl = msg.chl;
    }
    else {
      resolved.chl = []
    }

    if (msg.chr !== undefined) {
      resolved.chr = msg.chr;
    }
    else {
      resolved.chr = []
    }

    return resolved;
    }
};

module.exports = Wav;
