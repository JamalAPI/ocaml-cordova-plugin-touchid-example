class type touchid =
  object
    method authenticate : (unit -> unit) -> (unit -> unit) -> Js.js_string Js.t
    -> unit Js.meth
    method checkSupport : (unit -> unit) -> (Js.js_string Js.t -> unit) -> unit
    Js.meth
  end

let touchid () = Js.Unsafe.js_expr ("touchid")
