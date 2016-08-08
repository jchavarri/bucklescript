#directory "+compiler-libs";;
#load "ocamlcommon.cma";;
#mod_use "type_int_to_string.ml"

let slots_of_stdlib_cmi filename : string list = 
  let info = Cmi_format.read_cmi   (Filename.concat Config.standard_library filename) in
  List.map (fun x -> Ident.name (Type_int_to_string.name_of_signature_item x)) @@
  List.filter Type_int_to_string.serializable_signature info.cmi_sign 




let code_of_array files =
  let code =
    List.map (fun file -> 
        let codes = slots_of_stdlib_cmi file in 
        Printf.sprintf "let %s = [| %s |]"
          (Filename.chop_extension file )
          (String.concat  ";" (List.map (Printf.sprintf "%S") codes)) ) files in
  String.concat "\n" code

(** Generate fixed slots 
    ATTENTION: we need re-run the code when we upgrade the compiler
    We do this to avoid dependencies
*)
let _ = print_endline
    (code_of_array
       ["pervasives.cmi";
        "camlinternalOO.cmi";
        "camlinternalMod.cmi";
        "string.cmi";
        "array.cmi";
        "list.cmi"        
       ])
