let on_device_ready () =
  let cb () = () in
  let check_support_succ () =
    Cordova_touchid.authenticate cb cb  "Hello world"
  in
  Cordova_touchid.check_support check_support_succ Jsoo_lib.alert

let _ =
  Cordova.Event.device_ready on_device_ready
