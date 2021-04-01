// Auto-generated. Do not edit!

// (in-package mbot_nlu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ActionSlot = require('./ActionSlot.js');

//-----------------------------------------------------------

class ActionSlotArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sentence_recognition = null;
    }
    else {
      if (initObj.hasOwnProperty('sentence_recognition')) {
        this.sentence_recognition = initObj.sentence_recognition
      }
      else {
        this.sentence_recognition = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionSlotArray
    // Serialize message field [sentence_recognition]
    // Serialize the length for message field [sentence_recognition]
    bufferOffset = _serializer.uint32(obj.sentence_recognition.length, buffer, bufferOffset);
    obj.sentence_recognition.forEach((val) => {
      bufferOffset = ActionSlot.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionSlotArray
    let len;
    let data = new ActionSlotArray(null);
    // Deserialize message field [sentence_recognition]
    // Deserialize array length for message field [sentence_recognition]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sentence_recognition = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sentence_recognition[i] = ActionSlot.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.sentence_recognition.forEach((val) => {
      length += ActionSlot.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mbot_nlu/ActionSlotArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ac2cee11a45480fcd32ce9716a74e6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # a sentence gets divided into phrases and for each
    # phrase you get an intention and arguments, therefore
    # in the case of having one phrase to recognize the lenght
    # of this array should be 1
    ActionSlot[] sentence_recognition
    
    ================================================================================
    MSG: mbot_nlu/ActionSlot
    string intention
    Slot[] slots
    
    ================================================================================
    MSG: mbot_nlu/Slot
    string type
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionSlotArray(null);
    if (msg.sentence_recognition !== undefined) {
      resolved.sentence_recognition = new Array(msg.sentence_recognition.length);
      for (let i = 0; i < resolved.sentence_recognition.length; ++i) {
        resolved.sentence_recognition[i] = ActionSlot.Resolve(msg.sentence_recognition[i]);
      }
    }
    else {
      resolved.sentence_recognition = []
    }

    return resolved;
    }
};

module.exports = ActionSlotArray;
