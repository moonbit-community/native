///|
pub fn MCStr::unsafe_from_const_byte_ptr(ptr : ConstPtr[Byte]) -> MCStr {
  unsafe_coerce(ptr)
}

///|
pub extern "c" fn MCStr::to_bytes(self : MCStr) -> Bytes = "moonbit_native_cstring_to_bytes"

///|
pub fn MCStr::unsafe_from_byte_ptr(ptr : Ptr[Byte]) -> MCStr {
  unsafe_coerce(ptr)
}
