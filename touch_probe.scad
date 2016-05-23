use <core.scad>
use <base.scad>
use <pcb.scad>
use <stylus.scad>
use <case.scad>

//$fn = 32;
translate([0,0,-4]) core();
pcb();
translate([0,0,-24]) stylus();
translate([0,0,-1]) %case();
translate([0,0,-2.1]) base();