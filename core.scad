use <threads.scad>

module core() {
    rod_r = 1.74/2;
    rod_l = 6;
    core_r = 8/2;
    core_h = 8;
    difference() {
        cylinder(h=core_h, r=core_r);
        translate([0,0,-0.5]) cylinder(h=core_h+1,r=2/2);
        //translate([0,0,-0.5]) metric_thread(2, 0.4, core_h+1, internal=true);
    }
    translate([0,0,core_h-1.5]) {
        rotate([0,90,0]) translate([0,0,6/2]) cylinder(h=rod_l, r=rod_r);
        rotate([120,90,0]) translate([0,0,6/2]) cylinder(h=rod_l, r=rod_r);
        rotate([240,90,0]) translate([0,0,6/2]) cylinder(h=rod_l, r=rod_r);
    }
}

core();

