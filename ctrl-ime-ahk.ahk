; 左右 Ctrl キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Ctrl キーの空打ちで IME を「英数」に切り替え
; 右 Ctrl キーの空打ちで IME を「かな」に切り替え
; Ctrl キーを押している間に他のキーを打つと通常の Ctrl キーとして動作
;
; AutoHotkey: v1.1.33.00
; Author:     Miraium  https://github.com/Miraium/ctrl-ime-ahk
; 
; 以下フォーク元
; Author:     karakaram   http://www.karakaram.com/alt-ime-on-off
; Author:     moremorefor  https://github.com/moremorefor/ctrl-ime-ahk

#Include IME.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
#MaxHotkeysPerInterval 350

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~LAlt::
*~RAlt::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
*~LCtrl::
*~RCtrl::
*~Backspace::
    Return

; 左 Ctrl 空打ちで IME を OFF
LCtrl up::
    if (A_PriorHotkey == "*~LCtrl")
    {
        ; IME on状態で入力途中（日本語入力途中）に押した場合には、無反応になるように設定
        if IME_GetConverting() >= 1 {
            Return
        }
        IME_SET(0)
    }
    Return

; 右 Ctrl 空打ちで IME を ON
RCtrl up::
    if (A_PriorHotkey == "*~RCtrl")
    {
        IME_SET(1)
    }
    Return
    