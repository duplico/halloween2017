difference() {
    union() {
        mask();
        translate([0,0,-10]) linear_extrude(10) projection(cut=true) translate([0,0,-.000001]) mask();
    }
    translate([0,25,-12]) scale([.85,1,1]) sphere(d=21);
    
    translate([-50,-30,-4]) rotate([0,90,0])
        color("red") {
            cylinder(d=5, h=100);
            translate([0,-45,0]) cylinder(d=5, h=100);
        }
}



module mask() {
    scale (1.4)
    difference() {
        $fn=6;
        union() {
            main_mask();
            tubes();
        }
        all_cutouts();
    }
}

module tubes() {
    difference() {
        union() {
            translate([-20,-40,0]) rotate([15,-15,0]) cylinder($fn=20, d=25, h=30);
            translate([20,-40,0]) rotate([15,15,0]) cylinder($fn=20, d=25, h=30);
        }
    }
}

module tubes_cutout() {
    translate([-20,-40,0]) rotate([15,-15,0]) cylinder($fn=20, d=25-8, h=31);
    translate([20,-40,0]) rotate([15,15,0]) cylinder($fn=20, d=25-8, h=31);
}

module all_cutouts() {
    tubes_cutout();
    mask_cutout();
}

module main_mask() {
    difference () {
        union() {
            translate([0,-7,0]) rotate([-48,0,0]) scale([1,1.75,1])
                hollow_sphere(40, hollow=1, thickness=2.1);
            translate([0,-37.5,0])
                hollow_sphere(hollow=1, thickness=2.1);
        }
        //translate([0,-37,0]) cylinder(d=37,h=100);
    }
}

module mask_cutout() {    
    translate([-200/2,-200/2,-200]) cube(200);
    translate([0,-37.5,0])
        hollow_sphere(diam=74, hollow=0);
    
    translate([0,-7,0]) rotate([-48,0,0]) scale([1,1.75,1])
        hollow_sphere(39, hollow=0);
}

module hollow_sphere(diam=75, thickness=1, half=0, hollow=0) {
    difference() {
        sphere(d=diam);
        if (hollow) sphere(d=diam-thickness);
        if (half) translate([-diam/2,-diam/2,-diam]) cube(diam);
    }
}