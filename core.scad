use <threads.scad>

module core() {
    rod_r = 1.74/2;
    rod_l = 8;
    difference() {
        cylinder(h=6, r=10/2);
        translate([0,0,-0.5]) cylinder(h=7,r=2/2);
        //translate([0,0,-0.5]) metric_thread(2, 0.4, 7, internal=true);
    }
    translate([0,0,4.5]) {
        rotate([0,90,0]) translate([0,0,6/2]) cylinder(h=rod_l, r=rod_r);
        rotate([120,90,0]) translate([0,0,6/2]) cylinder(h=rod_l, r=rod_r);
        rotate([240,90,0]) translate([0,0,6/2]) cylinder(h=rod_l, r=rod_r);
    }
}

core();

