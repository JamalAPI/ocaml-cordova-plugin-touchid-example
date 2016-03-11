let on_device_ready _ =
  let t = Touchid.touchid () in
  t##checkSupport
  ( fun () ->
      t##authenticate ( fun () -> () ) ( fun () -> () ) (Js.string "Hello
      world");
  )
  ( fun err -> Dom_html.window##(alert err) );
  Js._false

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
