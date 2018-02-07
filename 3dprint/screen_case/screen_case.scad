$fn=10;

//base();
cover();

module post() {
    translate([5,10,1]) {
        cylinder(h=8, d2=2.2, d1=4);
        cylinder(h=9, d=2.2);
    }
}

w=90;
d=75;

module base() {
    
    difference() {
        union() {
            cube([w,d,2]);
            post();
            translate([0,59,0]) post();
            translate([79,0,0]) post();
            
            translate([(w-35)/2,-10, 0]) cube([35,10*2+d,2]);
        }
        
        //translate([-9, 17.5+5, 0]) cube([7,25,2]);
        //translate([92, 17.5+5, 0]) cube([7,25,2]);
        translate([(w-35)/2+5,-7, 0]) cube([25,7,2]);
        translate([(w-35)/2+5,d, 0]) cube([25,7,2]);
    }
}

h=25;
module cover() {
    diff=1.4;
    d=d+diff;
    w=w+diff;
    difference() {
        cube([w+2,d+2,h+1]);
        // body cutout:
        translate([1,1,1]) cube([w,d,h-1]);
        // cutout for base:
        translate([2,2,0]) cube([w-2,d-2,2]);
        // cutout for top:
        translate([1,1,3]) cube([w,d-30,h-1]);
        // cord hole:
        scale([1,1,1.67]) translate([90,65,0]) rotate([0,90,0]) cylinder(d=8, h=10);
        // Notches for the base:
        translate([(w-35)/2+diff/2,-10+diff/2, 0]) cube([35,10*2+d,3.5]);
        translate([-10+diff/2, (d-35)/2+diff/2, 0]) cube([10*2+w,35,3.5]);
        
        // Cutout for tension fit:
        cube([2.5,2.5,1]);
        translate([w,d]) cube([2.5,2.5,1]);
        translate([0,d]) cube([2.5,2.5,1]);
        translate([w,0]) cube([2.5,2.5,1]);
        
    }
}