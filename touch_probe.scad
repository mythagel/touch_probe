use <core.scad>
use <base.scad>
use <stylus.scad>
use <case.scad>

$fn = 32;
translate([0,0,-2]) core();
base();
translate([0,0,-24]) stylus();
%case();