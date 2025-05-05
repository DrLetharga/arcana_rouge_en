@loadcell
@loop
;
;
@macro name=copyone
@copy dx=0 dy=0 sx=%x sy=0 sw=24 sh=24
@wait time=100
@endmacro
;
*start
@copyone x=0
@copyone x=24
@copyone x=48
@copyone x=72
@copyone x=96
@copyone x=120


@jump target=*start
