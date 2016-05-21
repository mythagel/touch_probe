
module base() {
    r0 = (8+1)/2;
    r1 = (18)/2;
    ball_r = (0.154 * 25.4) / 2;
    ball_center = (r0 + (r1-r0)/2);
    translate([0,0,2.6]) {
        rotate([0,0,0]) translate([ball_center - 0.5,0,0]) union () {
            translate([0,2,0]) sphere(r=ball_r);
            translate([0,-2,0]) sphere(r=ball_r);
        }
        rotate([0,0,120]) translate([ball_center - 0.5,0,0]) union () {
            translate([0,2,0]) sphere(r=ball_r);
            translate([0,-2,0]) sphere(r=ball_r);
        }
        rotate([0,0,240]) translate([ball_center - 0.5,0,0]) union () {
            translate([0,2,0]) sphere(r=ball_r);
            translate([0,-2,0]) sphere(r=ball_r);
        }
    }

    difference() {
        cylinder(r=r1, h=1.6);
        translate([0,0,-0.5]) cylinder(r=r0, h=3);
        
        // screw holes
        translate([0,0,-0.5]) {
            rotate([0,0,60]) translate([ball_center,0,0])
                cylinder(r=3/2, h=3);
            rotate([0,0,60+120]) translate([ball_center,0,0])
                cylinder(r=3/2, h=3);
            rotate([0,0,60+120+120]) translate([ball_center,0,0])
                cylinder(r=3/2, h=3);
        }
    }
}

base();