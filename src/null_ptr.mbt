///|

///|
let null_pointer : ConstPtr[Unit] = _null_pointer() |> unsafe_coerce

///|
pub fn Ptr::null_pointer[T]() -> Ptr[T] {
  unsafe_coerce(null_pointer)
}

///|
pub fn Ptr::is_null[T](self : Ptr[T]) -> Bool {
  pointer_sub(unsafe_coerce(self), unsafe_coerce(null_pointer)) == 0
}

///|
pub fn ConstPtr::null_pointer[T]() -> ConstPtr[T] {
  unsafe_coerce(null_pointer)
}

///|
pub fn ConstPtr::is_null[T](self : ConstPtr[T]) -> Bool {
  pointer_sub(unsafe_coerce(self), unsafe_coerce(null_pointer)) == 0
}
