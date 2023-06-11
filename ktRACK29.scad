//
// ktRack29
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;



A();


module A()
difference()
{
    union()
    {
        translate([-14/2, -10, 0]) cube([14, 50, 3]);
        translate([0, 0, (24+th*2)/2+2.1]) rotate([-90, 0, 0,]) cylinder(30, (24+th*2)/2, (24+th*2)/2, $fn=100);
    }

    translate([0, th+gap1, (24+th*2)/2+2.1]) rotate([-90, 0, 0,]) cylinder(30-th, (24)/2, (24)/2, $fn=100);
    
    translate([0, -5, 3]) rotate([180, 0, 0]) rear_screw_hole();
    translate([0, 35, 3]) rotate([180, 0, 0]) rear_screw_hole();
    
}




module rear_screw_hole()
{
    translate([0, 0, 3]) cylinder(5, 1.8, 1.8, $fn=30);
    translate([0, 0, 2.2-gap1]) cylinder(0.8+gap2, 1.8+0.7, 1.8, $fn=30);
    translate([0, 0, -gap1]) cylinder(2.2+gap1, 2.75+0.4, 2.75-0.6, $fn=30);
    translate([0, 0, -10]) cylinder(10, 2.75+0.4, 2.75+0.4, $fn=30);
}