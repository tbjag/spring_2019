
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TIMES
    | THEN
    | SETREF
    | SET
    | SEMICOLON
    | RPAREN
    | RBRACE
    | PROC
    | PLUS
    | NEWREF
    | MINUS
    | LPAREN
    | LETREC
    | LET
    | LBRACE
    | ISZERO
    | INT of (
# 22 "parser.mly"
       (int)
# 27 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "parser.mly"
       (string)
# 34 "parser.ml"
  )
    | EQUALS
    | EOF
    | END
    | ELSE
    | DIVIDED
    | DEREF
    | COMMA
    | BEGIN
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState78
  | MenhirState75
  | MenhirState74
  | MenhirState73
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState61
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState54
  | MenhirState53
  | MenhirState52
  | MenhirState51
  | MenhirState50
  | MenhirState49
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState36
  | MenhirState31
  | MenhirState30
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState20
  | MenhirState14
  | MenhirState13
  | MenhirState12
  | MenhirState10
  | MenhirState5
  | MenhirState2
  | MenhirState0

# 8 "parser.mly"
  
open Ast

# 109 "parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 131 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv305 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv303 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 148 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)) : 'freshtv306)
    | _ ->
        _menhir_fail ()

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | DEREF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | ISZERO ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LETREC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NEWREF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | PROC ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | SET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | SETREF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DEREF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | INT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | ISZERO ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LETREC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NEWREF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | PROC ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | SET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | SETREF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | DEREF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | INT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | ISZERO ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LETREC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NEWREF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | PROC ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | SET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | SETREF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | DEREF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | ISZERO ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LETREC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NEWREF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | PROC ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | SET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | SETREF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState36 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | DEREF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | ID _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | INT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | ISZERO ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | LETREC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | NEWREF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | PROC ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | SET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | SETREF ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv182)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 365 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv186)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 139 "parser.mly"
                                  ( Mul(e1,e2) )
# 382 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | BEGIN | COMMA | DEREF | ELSE | END | EOF | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv191 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 137 "parser.mly"
                                 ( Add(e1,e2) )
# 403 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv194)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv197 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 140 "parser.mly"
                                    ( Div(e1,e2) )
# 420 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv201 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | BEGIN | COMMA | DEREF | ELSE | END | EOF | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv199 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 138 "parser.mly"
                                  ( Sub(e1,e2) )
# 441 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv202)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv205 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState47 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 147 "parser.mly"
                                      ( DeRef(e) )
# 475 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv208)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState49 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | DEREF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ID _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | INT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | ISZERO ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LETREC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | NEWREF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | PROC ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | SET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | SETREF ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv210)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv212)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv215 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv213 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState51 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | DEREF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | ID _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | INT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | ISZERO ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LETREC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | NEWREF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | PROC ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SETREF ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv214)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv216)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv219 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | BEGIN | COMMA | DEREF | ELSE | END | EOF | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv217 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 149 "parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 620 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv220)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv223 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState54 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 145 "parser.mly"
                                       ( IsZero(e) )
# 654 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv226)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv229 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 668 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv227 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 680 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState56 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | DEREF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | ID _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | INT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | ISZERO ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LETREC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | NEWREF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | PROC ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | SET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | SETREF ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv228)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv230)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv233 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 732 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | BEGIN | COMMA | DEREF | ELSE | END | EOF | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv231 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 750 "parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 755 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 141 "parser.mly"
                                                    ( Let(x,e1,e2) )
# 763 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv234)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv237 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 775 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 779 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv235 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 791 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 795 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState59 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | DEREF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | ID _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | INT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | ISZERO ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LETREC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | NEWREF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | PROC ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SETREF ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv236)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv238)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv241 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 847 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 851 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | BEGIN | COMMA | DEREF | ELSE | END | EOF | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv239 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 869 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 873 "parser.ml"
            )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 878 "parser.ml"
            ))), (y : (
# 23 "parser.mly"
       (string)
# 882 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 142 "parser.mly"
                                                                               ( Letrec(x,y,e1,e2) )
# 892 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv242)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState62 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 154 "parser.mly"
                                      ( Sub(Int 0, e) )
# 926 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv248)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | DEREF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | ID _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | INT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | ISZERO ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LETREC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | NEWREF ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | PROC ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState64 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv249 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 152 "parser.mly"
                               (e)
# 983 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)) : 'freshtv252)
        | SET ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | SETREF ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv254)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState66 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 144 "parser.mly"
                                           ( App(e1,e2) )
# 1022 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv260)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv265 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState68 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv261 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 146 "parser.mly"
                                       ( NewRef(e) )
# 1058 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv266)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv271 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1072 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv269 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1088 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState70 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv267 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1096 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1102 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 143 "parser.mly"
                                                             ( Proc(x,e) )
# 1112 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)) : 'freshtv270)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv272)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv275 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1126 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | BEGIN | COMMA | DEREF | ELSE | END | EOF | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv273 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1144 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1149 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 150 "parser.mly"
                                    ( Set(x,e) )
# 1156 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv276)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState73 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | DEREF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | ID _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | INT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | ISZERO ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LETREC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NEWREF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | PROC ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SETREF ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv278)
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv280)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv285 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv283 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState75 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv281 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 148 "parser.mly"
                                                          ( SetRef(e1,e2) )
# 1247 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv286)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState78 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 74 "parser.mly"
       (Ast.prog)
# 1276 "parser.ml"
            ) = 
# 106 "parser.mly"
                 ( AProg e )
# 1280 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv291) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 74 "parser.mly"
       (Ast.prog)
# 1288 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 74 "parser.mly"
       (Ast.prog)
# 1296 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 74 "parser.mly"
       (Ast.prog)
# 1304 "parser.ml"
            )) : (
# 74 "parser.mly"
       (Ast.prog)
# 1308 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv288)) : 'freshtv290)) : 'freshtv292)) : 'freshtv294)) : 'freshtv296)
        | MINUS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv298)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let _v : 'tv_exprs = let es =
      let xs = xs0 in
      
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1339 "parser.ml"
      
    in
    
# 158 "parser.mly"
                                            ( es )
# 1345 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exprs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv173 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exprs)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 151 "parser.mly"
                             ( BeginEnd(es) )
# 1369 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)) : 'freshtv174)) : 'freshtv176)) : 'freshtv178)) : 'freshtv180)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv81 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv83 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv87 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1408 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv89 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1417 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv99 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1446 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1450 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv101 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1459 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1463 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv103 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1472 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1476 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv105 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1485 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv107 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1494 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv109 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1503 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv113 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv115 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv117 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1607 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv151 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1616 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1620 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv159 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1644 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1653 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv166)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEREF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ID _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | INT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | ISZERO ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LETREC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NEWREF ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PROC ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SET ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SETREF ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv76)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 1729 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv67 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1740 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | DEREF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | ID _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | INT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | ISZERO ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LETREC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | NEWREF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | PROC ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | SET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | SETREF ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv68)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv69 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1782 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)) : 'freshtv72)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "parser.mly"
       (string)
# 1812 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv55 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1823 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv51 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1833 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BEGIN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | DEREF ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | ID _v ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
                    | IF ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | INT _v ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
                    | ISZERO ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | LET ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | LETREC ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | LPAREN ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | NEWREF ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | PROC ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | SET ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | SETREF ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv52)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv53 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1875 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)) : 'freshtv56)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv57 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1886 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)) : 'freshtv60)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv61 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)) : 'freshtv64)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | DEREF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | ID _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | INT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | ISZERO ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LETREC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | NEWREF ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | PROC ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | SET ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | SETREF ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv48)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | DEREF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | INT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | ISZERO ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | LETREC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState13 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DEREF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ID _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | INT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | ISZERO ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LETREC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | NEWREF ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | PROC ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SET ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SETREF ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv46)
    | NEWREF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | PROC ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | SET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | SETREF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 2042 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv37 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2053 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv33 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2063 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 23 "parser.mly"
       (string)
# 2068 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv29 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2079 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 2083 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQUALS ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv25 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2093 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 2097 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BEGIN ->
                            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | DEREF ->
                            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | ID _v ->
                            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                        | IF ->
                            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | INT _v ->
                            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                        | ISZERO ->
                            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | LET ->
                            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | LETREC ->
                            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | LPAREN ->
                            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | NEWREF ->
                            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | PROC ->
                            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | SET ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | SETREF ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv26)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv27 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2139 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 2143 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)) : 'freshtv30)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv31 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2154 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 2158 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)) : 'freshtv34)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv35 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2169 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv39 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2180 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 2204 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv17 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2215 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | DEREF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | ID _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | INT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | ISZERO ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LETREC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | NEWREF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | PROC ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | SET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | SETREF ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv18)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv19 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2257 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | DEREF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | ID _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | INT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | ISZERO ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LETREC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | NEWREF ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | PROC ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SET ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SETREF ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (int)
# 2322 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 22 "parser.mly"
       (int)
# 2332 "parser.ml"
    )) : (
# 22 "parser.mly"
       (int)
# 2336 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 135 "parser.mly"
              ( Int i )
# 2341 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | DEREF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | ISZERO ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LETREC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NEWREF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | PROC ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | SET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | SETREF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 2385 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 23 "parser.mly"
       (string)
# 2395 "parser.ml"
    )) : (
# 23 "parser.mly"
       (string)
# 2399 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 136 "parser.mly"
             ( Var x )
# 2404 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DEREF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ID _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | INT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | ISZERO ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LETREC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NEWREF ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | PROC ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SET ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SETREF ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | DEREF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | ID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | INT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | ISZERO ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LETREC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NEWREF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | PROC ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | SET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | SETREF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState31 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2497 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 74 "parser.mly"
       (Ast.prog)
# 2520 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEREF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ISZERO ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LETREC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEWREF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PROC ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SETREF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 219 "/usr/share/menhir/standard.mly"
  


# 2574 "parser.ml"
