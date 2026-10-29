///|
trait Sized {
  fn size() -> Int64
}

///|
trait Setter {
  fn set(Ptr[Self], Self) -> Unit
}

///|
trait Getter {
  fn get(ConstPtr[Self]) -> Self
}
