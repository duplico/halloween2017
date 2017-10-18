difference() {
    battery_whole();
    cube([55,100,160]);
    translate([55/2,25]) cylinder(d=15,h=200);
    translate([0,25-7.5]) cube([55,15,166]);
    translate([55/2-7.5,25-7.5]) cube([15,15,168]);
}
translate([56,-20,15]) rotate([90,0,90]) linear_extrude(height=10) scale([1,1,1]) import("ray.dxf");
mirror([0,1,0]) translate([-11,-120,15]) rotate([90,0,90]) linear_extrude(height=10) scale([1,1,1]) import("ray.dxf");

module battery_whole() {
    union() {
        minkowski() {
            cube([55,100,10]);
            cylinder(r=10,h=160);
        }

        translate([55/2,25,158])
            sphere(d=45);
        translate([55/2,100-25,158])
            sphere(d=45);
    }
}

