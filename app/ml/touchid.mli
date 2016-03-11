class type touchid =
  object
    method authenticate : (unit -> unit) -> (unit -> unit) -> Js.js_string Js.t
    -> unit Js.meth
    method checkSupport : (unit -> unit) -> (Js.js_string Js.t -> unit) -> unit
    Js.meth
  end

val touchid : unit -> touchid Js.t
