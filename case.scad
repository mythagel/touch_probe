module case() {
translate([0,0,-1.1]) difference() {
    cylinder(r=20/2, h=10);
    translate([0,0,-0.5]) cylinder(r=(8+1)/2, h=10+1);
    translate([0,0,1]) cylinder(r=(20-1.5)/2, h=10);
    
    // screw holes
    ball_center = ((9/2) + ((18/2)-(9/2))/2);
    translate([0,0,-0.5]) {
        rotate([0,0,60]) translate([ball_center,0,0])
            cylinder(r=2/2, h=3);
        rotate([0,0,60+120]) translate([ball_center,0,0])
            cylinder(r=2/2, h=3);
        rotate([0,0,60+120+120]) translate([ball_center,0,0])
            cylinder(r=2/2, h=3);
    }
}
}

case();