(* Copyright (C) 2015-2016 Bloomberg Finance L.P.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * In addition to the permissions granted to you by the LGPL, you may combine
 * or link a "work that uses the Library" with a publicly distributed version
 * of this file to produce a combined library or application, then distribute
 * that combined work under the terms of your choosing, with no requirement
 * to comply with the obligations normally placed on you by section 4 of the
 * LGPL version 3 (or the corresponding section of a later version of the LGPL
 * should you choose to use a later version).
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA. *)

(**
`playground_refmt_main` defines all modules that will be needed later on by Compiler.ml in playground
*)

module Location = Location
module Lam_compile_env = Lam_compile_env
module Compmisc = Compmisc
module Misc = Misc
module Super_main = Super_main
module Reactjs_jsx_ppx_v2 = Reactjs_jsx_ppx_v2
module Reactjs_jsx_ppx_v3 = Reactjs_jsx_ppx_v3
module Bs_builtin_ppx = Bs_builtin_ppx
module Typemod = Typemod
module Translmod = Translmod
module Lambda = Lambda
module Js_dump_program = Js_dump_program
module Lam_compile_main = Lam_compile_main
module Ext_pp = Ext_pp
module Parse = Parse
module Bs_conditional_initial = Bs_conditional_initial
module Clflags = Clflags
module Migrate_parsetree = Refmt_api.Migrate_parsetree
