r0 = (8+1)/2;
r1 = (18)/2;
rc = r0 + (r1-r0)/2;

$fn=64;


if(false) {
    // pcb outline
    difference() {
        circle(r=r1);
        circle(r=r0);
    }

    // ball bearings
    translate([0,0,6]){
            rotate([0,0,0-18]) translate([rc,0,0]) sphere(r=3.9116/2);
            rotate([0,0,0+18]) translate([rc,0,0]) sphere(r=3.9116/2);
            rotate([0,0,120-18]) translate([rc,0,0]) sphere(r=3.9116/2);
            rotate([0,0,120+18]) translate([rc,0,0]) sphere(r=3.9116/2);
            rotate([0,0,240-18]) translate([rc,0,0]) sphere(r=3.9116/2);
            rotate([0,0,240+18]) translate([rc,0,0]) sphere(r=3.9116/2);
    }
}

module annulus(id, od) difference() {
   circle(r=od/2);
   //circle(r=id/2);
}

translate([0,0,.2]) {
    
    difference() {
        // circular trace
        circle(r=rc+0.75);
        circle(r=rc-0.75);
        
        // cutout for ball bearing pads
        rotate([0,0,0-18]) translate([rc,0,0]) circle(r=2.99999/2);
        rotate([0,0,0]) translate([rc,0,0]) circle(r=2.99999/2);
        rotate([0,0,0+18]) translate([rc,0,0]) circle(r=2.99999/2);
        rotate([0,0,120-18]) translate([rc,0,0]) circle(r=2.99999/2);
        rotate([0,0,120]) translate([rc,0,0]) circle(r=2.99999/2);
        rotate([0,0,120+18]) translate([rc,0,0]) circle(r=2.99999/2);
        rotate([0,0,240-18]) translate([rc,0,0]) circle(r=2.99999/2);
        rotate([0,0,240]) translate([rc,0,0]) circle(r=2.99999/2);
        rotate([0,0,240+18]) translate([rc,0,0]) circle(r=2.99999/2);
        
        // cutout for through holes
        rotate([0,0,60-10]) translate([rc,0,0]) circle(r=1.99999/2);
        rotate([0,0,60]) translate([rc,0,0]) circle(r=1.99999/2);
        rotate([0,0,60+10]) translate([rc,0,0]) circle(r=1.99999/2);
    }
    
    // through hole pads
    rotate([0,0,60-10]) translate([rc,0,0]) annulus(1, 2);
    rotate([0,0,60+10]) translate([rc,0,0]) annulus(1, 2);

    // bearing pads
    rotate([0,0,0-18]) translate([rc,0,0]) difference() annulus(2, 3);
    rotate([0,0,0+18]) translate([rc,0,0]) difference() annulus(2, 3);
    rotate([0,0,120-18]) translate([rc,0,0]) difference() annulus(2, 3);
    rotate([0,0,120+18]) translate([rc,0,0]) difference() annulus(2, 3);
    rotate([0,0,240-18]) translate([rc,0,0]) difference() annulus(2, 3);
    rotate([0,0,240+18]) translate([rc,0,0]) difference() annulus(2, 3);
}