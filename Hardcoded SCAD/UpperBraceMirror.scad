// Upper brace mirror

use<UpperBrace.scad>

UpperBraceMirror();

module UpperBraceMirror()
{
    scale([-1, 1, 1])
        UpperBrace();
}