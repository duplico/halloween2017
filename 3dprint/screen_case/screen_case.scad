$fn=10;

module post() {
    translate([4,4,1]) {
        cylinder(h=5, d2=2, d1=4);
        cylinder(h=7, d=2);
    }
}

difference() {
    union() {
        cube([90,70,2]);
        post();
        translate([0,59,0]) post();
        translate([79,0,0]) post();
    }
    translate([15,15,0]) cube([90,70,3]);
}