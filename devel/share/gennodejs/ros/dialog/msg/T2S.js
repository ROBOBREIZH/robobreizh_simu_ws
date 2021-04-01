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

class T2S {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.language = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type T2S
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [language]
    bufferOffset = _serializer.string(obj.language, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type T2S
    let len;
    let data = new T2S(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [language]
    data.language = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text.length;
    length += object.language.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dialog/T2S';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8227818ab6074445792448d628153554';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string text
    string language
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new T2S(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.language !== undefined) {
      resolved.language = msg.language;
    }
    else {
      resolved.language = ''
    }

    return resolved;
    }
};

module.exports = T2S;
