module case() difference() {
    cylinder(r=20/2, h=10);
    translate([0,0,-0.5]) cylinder(r=(20-1.5)/2, h=11);
}

case();