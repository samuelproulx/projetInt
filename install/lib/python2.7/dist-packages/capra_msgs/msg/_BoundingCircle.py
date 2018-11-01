# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from capra_msgs/BoundingCircle.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class BoundingCircle(genpy.Message):
  _md5sum = "8a1ed972b142aeae81d6cad44d62a9b7"
  _type = "capra_msgs/BoundingCircle"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 xcenter
int64 ycenter
float64 radius"""
  __slots__ = ['xcenter','ycenter','radius']
  _slot_types = ['int64','int64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       xcenter,ycenter,radius

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BoundingCircle, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.xcenter is None:
        self.xcenter = 0
      if self.ycenter is None:
        self.ycenter = 0
      if self.radius is None:
        self.radius = 0.
    else:
      self.xcenter = 0
      self.ycenter = 0
      self.radius = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2qd().pack(_x.xcenter, _x.ycenter, _x.radius))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.xcenter, _x.ycenter, _x.radius,) = _get_struct_2qd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2qd().pack(_x.xcenter, _x.ycenter, _x.radius))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.xcenter, _x.ycenter, _x.radius,) = _get_struct_2qd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2qd = None
def _get_struct_2qd():
    global _struct_2qd
    if _struct_2qd is None:
        _struct_2qd = struct.Struct("<2qd")
    return _struct_2qd
