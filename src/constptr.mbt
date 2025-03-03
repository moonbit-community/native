///|
pub fn ConstPtr::get[T : Getter](self : ConstPtr[T]) -> T {
  T::get(self)
}

///|
pub fn ConstPtr::compare[T](self : ConstPtr[T], other : ConstPtr[T]) -> Int {
  pointer_sub(unsafe_coerce(self), unsafe_coerce(other)).to_int()
}

///|
pub fn ConstPtr::add[T : Sized](
  self : ConstPtr[T],
  offset : Int64
) -> ConstPtr[T] {
  self |> unsafe_coerce |> pointer_add(offset * T::size()) |> unsafe_coerce
}

///|
pub fn ConstPtr::sub[T : Sized](
  self : ConstPtr[T],
  other : ConstPtr[T]
) -> Int64 {
  let lhs = unsafe_coerce(self)
  let rhs = unsafe_coerce(other)
  pointer_sub(lhs, rhs) / T::size()
}

///|
pub fn ConstPtr::from_rc_fixedarray[T](rc : Rc[FixedArray[T]]) -> ConstPtr[T] {
  unsafe_coerce(rc)
}

///|
pub fn ConstPtr::from_rc_bytes[T](rc : Rc[Bytes]) -> ConstPtr[T] {
  unsafe_coerce(rc)
}

///|
pub fn ConstPtr::from_rc_string[T](rc : Rc[String]) -> ConstPtr[T] {
  unsafe_coerce(rc)
}
