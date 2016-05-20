use <core.scad>
use <base.scad>
use <stylus.scad>

$fn = 32;
core();
base();
translate([0,0,-24]) stylus();