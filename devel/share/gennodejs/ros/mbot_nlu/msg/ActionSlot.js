// Auto-generated. Do not edit!

// (in-package mbot_nlu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Slot = require('./Slot.js');

//-----------------------------------------------------------

class ActionSlot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intention = null;
      this.slots = null;
    }
    else {
      if (initObj.hasOwnProperty('intention')) {
        this.intention = initObj.intention
      }
      else {
        this.intention = '';
      }
      if (initObj.hasOwnProperty('slots')) {
        this.slots = initObj.slots
      }
      else {
        this.slots = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionSlot
    // Serialize message field [intention]
    bufferOffset = _serializer.string(obj.intention, buffer, bufferOffset);
    // Serialize message field [slots]
    // Serialize the length for message field [slots]
    bufferOffset = _serializer.uint32(obj.slots.length, buffer, bufferOffset);
    obj.slots.forEach((val) => {
      bufferOffset = Slot.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionSlot
    let len;
    let data = new ActionSlot(null);
    // Deserialize message field [intention]
    data.intention = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [slots]
    // Deserialize array length for message field [slots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.slots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.slots[i] = Slot.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.intention.length;
    object.slots.forEach((val) => {
      length += Slot.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mbot_nlu/ActionSlot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95d873f61ab7124887d29a04f0f7906c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ActionSlot(null);
    if (msg.intention !== undefined) {
      resolved.intention = msg.intention;
    }
    else {
      resolved.intention = ''
    }

    if (msg.slots !== undefined) {
      resolved.slots = new Array(msg.slots.length);
      for (let i = 0; i < resolved.slots.length; ++i) {
        resolved.slots[i] = Slot.Resolve(msg.slots[i]);
      }
    }
    else {
      resolved.slots = []
    }

    return resolved;
    }
};

module.exports = ActionSlot;
