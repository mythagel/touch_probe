
module base() {
    ball_r = (0.154 * 25.4) / 2;
    translate([0,0,2.6]) {
    rotate([0,0,0]) translate([8,0,0]) union () {
        translate([0,2,0]) sphere(r=ball_r);
        translate([0,-2,0]) sphere(r=ball_r);
    }
    rotate([0,0,120]) translate([8,0,0]) union () {
        translate([0,2,0]) sphere(r=ball_r);
        translate([0,-2,0]) sphere(r=ball_r);
    }
    rotate([0,0,240]) translate([8,0,0]) union () {
        translate([0,2,0]) sphere(r=ball_r);
        translate([0,-2,0]) sphere(r=ball_r);
    }
    }

    difference() {
        cylinder(r=24/2, h=1.6);
        translate([0,0,-0.5]) cylinder(r=11/2, h=3);
    }
}

base();