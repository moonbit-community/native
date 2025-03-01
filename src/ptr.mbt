///|
pub fn Ptr::set[T : Setter](self : Ptr[T], x : T) -> Unit {
  T::set(self, x)
}

///|
pub fn Ptr::get[T : Getter](self : Ptr[T]) -> T {
  T::get(unsafe_coerce(self))
}

///|
pub fn Ptr::to_const_ptr[T](self : Ptr[T]) -> ConstPtr[T] {
  unsafe_coerce(self)
}

///|
pub fn Ptr::compare[T](self : Ptr[T], other : Ptr[T]) -> Int {
  pointer_sub(unsafe_coerce(self), unsafe_coerce(other)).to_int()
}

///|
pub fn Ptr::add[T : Sized](self : Ptr[T], offset : Int64) -> Ptr[T] {
  self |> unsafe_coerce |> pointer_add(offset * T::size()) |> unsafe_coerce
}

///|
pub fn Ptr::sub[T : Sized](self : Ptr[T], other : Ptr[T]) -> Int64 {
  let lhs = unsafe_coerce(self)
  let rhs = unsafe_coerce(other)
  pointer_sub(lhs, rhs) / T::size()
}

///|
pub fn Ptr::from_rc_fixedarray[T](rc : Rc[FixedArray[T]]) -> Ptr[T] {
  unsafe_coerce(rc)
}
