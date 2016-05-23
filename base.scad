module base() {
    difference() {
        od = 20;
        r0 = (8+1)/2;
        r1 = (18)/2;
        h = 2;

        cylinder(r=od/2, h=2);
        translate([0,0,-0.5]) cylinder(r=r0, h=h+1);
        
        translate([0,0,1]) difference() {
            cylinder(r=(od+1)/2, h=h+1);
            translate([0,0,-0.5]) cylinder(r=(od-2)/2,h=h+2);
        }
        
        // screw holes
        screw_center = ((9/2) + ((18/2)-(9/2))/2);
        translate([0,0,-0.5]) {
            rotate([0,0,60]) translate([screw_center,0,0])
                cylinder(r=3/2, h=h+1);
            rotate([0,0,60+120]) translate([screw_center,0,0])
                cylinder(r=3/2, h=h+1);
            rotate([0,0,60+120+120]) translate([screw_center,0,0])
                cylinder(r=3/2, h=h+1);
        }
    }
}

base();