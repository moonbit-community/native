///|
pub fn[V, E : Error] try_finally(f : () -> V!E, finally~ : () -> Unit) -> V!E {
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
