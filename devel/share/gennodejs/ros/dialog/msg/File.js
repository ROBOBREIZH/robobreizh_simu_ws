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

class File {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.extension = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
      if (initObj.hasOwnProperty('extension')) {
        this.extension = initObj.extension
      }
      else {
        this.extension = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type File
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [extension]
    bufferOffset = _serializer.string(obj.extension, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type File
    let len;
    let data = new File(null);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [extension]
    data.extension = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    length += object.extension.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dialog/File';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88be86ccd453e2070ff3582ad605e3d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string data
    string extension
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new File(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    if (msg.extension !== undefined) {
      resolved.extension = msg.extension;
    }
    else {
      resolved.extension = ''
    }

    return resolved;
    }
};

module.exports = File;
