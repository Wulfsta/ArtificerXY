// Lower Brace mirror

use<LowerBrace.scad>

LowerBraceMirror();

module LowerBraceMirror()
{
    scale([-1, 1, 1])
        LowerBrace();
}