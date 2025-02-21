///|
pub fn Ptr::reinterpret_as_byte_ptr[T](self : Ptr[T]) -> Ptr[Byte] {
  unsafe_coerce(self)
}

///|
pub fn Ptr::reinterpret_as_const_byte_ptr[T](self : Ptr[T]) -> ConstPtr[Byte] {
  unsafe_coerce(self)
}

///|
pub fn ConstPtr::reinterpret_as_const_byte_ptr[T](
  self : ConstPtr[T]
) -> ConstPtr[Byte] {
  unsafe_coerce(self)
}

///|
pub fn MCStr::reinterpret_as_byte_ptr(self : MCStr) -> Ptr[Byte] {
  unsafe_coerce(self)
}

///|
pub fn MCStr::reinterpret_as_const_byte_ptr(self : MCStr) -> ConstPtr[Byte] {
  unsafe_coerce(self)
}

///|
pub fn CStr::reinterpret_as_const_byte_ptr(self : CStr) -> ConstPtr[Byte] {
  unsafe_coerce(self)
}

///|
extern "c" fn pointer_reinterpret_as_int64(ptr : Ptr[Byte]) -> Int64 = "moonbit_native_pointer_reinterpret_as_int64"

///|
pub fn Ptr::reinterpret_as_int64[T](self : Ptr[T]) -> Int64 {
  pointer_reinterpret_as_int64(unsafe_coerce(self))
}

///|
pub fn Ptr::reinterpret_as_uint64[T](self : Ptr[T]) -> UInt64 {
  pointer_reinterpret_as_int64(unsafe_coerce(self)).reinterpret_as_uint64()
}

///|
pub fn ConstPtr::reinterpret_as_uint64[T](self : ConstPtr[T]) -> UInt64 {
  pointer_reinterpret_as_int64(unsafe_coerce(self)).reinterpret_as_uint64()
}

///|
pub fn ConstPtr::reinterpret_as_int64[T](self : ConstPtr[T]) -> Int64 {
  pointer_reinterpret_as_int64(unsafe_coerce(self))
}
