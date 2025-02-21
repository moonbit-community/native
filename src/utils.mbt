///|
pub fn try_finally[V, E : Error](f : () -> V!E, finally~ : () -> Unit) -> V!E {
  try {
    let v = f!()
    finally()
    v
  } catch {
    _ as e => {
      finally()
      raise e
    }
  }
}
