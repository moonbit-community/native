///|
pub impl Getter for Byte with fn get(self : ConstPtr[Byte]) {
  byte_pointer_get(self)
}

///|
pub impl Getter for Char with fn get(self : ConstPtr[Char]) {
  unsafe_coerce(int32_pointer_get(unsafe_coerce(self)))
}

///|
pub impl Getter for Int16 with fn get(self : ConstPtr[Int16]) {
  int16_pointer_get(self)
}

///|
pub impl Getter for Int32 with fn get(self : ConstPtr[Int32]) {
  int32_pointer_get(self)
}

///|
pub impl Getter for Int64 with fn get(self : ConstPtr[Int64]) {
  int64_pointer_get(self)
}

///|
pub impl Getter for UInt16 with fn get(self : ConstPtr[UInt16]) {
  uint16_pointer_get(self)
}

///|
pub impl Getter for UInt32 with fn get(self : ConstPtr[UInt32]) {
  uint32_pointer_get(self)
}

///|
pub impl Getter for UInt64 with fn get(self : ConstPtr[UInt64]) {
  uint64_pointer_get(self)
}

///|
pub impl Getter for Float with fn get(self : ConstPtr[Float]) {
  float_pointer_get(self)
}

///|
pub impl Getter for Double with fn get(self : ConstPtr[Double]) {
  double_pointer_get(self)
}
