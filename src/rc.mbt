///|
pub fn unsafe_coerce[A, B](x : A) -> B = "%identity"

///|
extern "c" fn _release(rc : Rc[Unit]) = "moonbit_decref"

///|
pub fn Rc::release[T](self : Rc[T]) -> Unit {
  unsafe_coerce(_release)(self)
}

///|
pub fn Rc::from_bytes(xs : Bytes) -> Rc[Bytes] = "%identity"

///|
pub fn Rc::from_fixedarray[T](xs : FixedArray[T]) -> Rc[FixedArray[T]] = "%identity"

///|
pub fn Rc::scope_bytes[R](xs : Bytes, f : (ConstPtr[Byte], Int) -> R) -> R {
  let rc = Rc::from_bytes(xs)
  let ptr : ConstPtr[Byte] = unsafe_coerce(rc)
  let result = f(ptr, xs.length())
  rc.release()
  result
}

///|
pub fn Rc::scope_fixedarray[T, R](
  xs : FixedArray[T],
  f : (Ptr[T], Int) -> R
) -> R {
  let rc = Rc::from_fixedarray(xs)
  let ptr : Ptr[T] = unsafe_coerce(rc)
  let result = f(ptr, xs.length())
  rc.release()
  result
}
