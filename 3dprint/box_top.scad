box_w=95;
box_l=140;
box_h=52;

corner_r=5;
corner_h=15;

wall_thickness=2;

bat_center_x=55/2;
bat_center_y=100/2;

allthread_diam=6.35; // quarter inch

difference() {
    minkowski() {
        translate([bat_center_x,bat_center_y,(box_h-corner_h)/2]) {
            cube([box_w-corner_r*2,
                  box_l-corner_r*2,
                  box_h-corner_h], center=true);
        }
        cylinder(r=corner_r,corner_h, center=false);
    }
    translate([bat_center_x-(box_w/2)+wall_thickness,
               bat_center_y-(box_l/2)+wall_thickness,-1])
        cube([box_w-wall_thickness*2,box_l-wall_thickness*2,box_h-wall_thickness+1]);
    
    // keyhole:
    translate([0,0,box_h-wall_thickness]) {
        translate([-3,0,0]) {
            translate([0,bat_center_y,0]) cylinder(d=18, h=wall_thickness+2);
            translate([-6.15/2,bat_center_y-22/2,0]) cube([6.15,22,wall_thickness+2]);
            translate([-22/2,bat_center_y-22/2,0.3]) cube([22,22,0.3]);
        }
        translate([bat_center_x-(box_w/2)+wall_thickness,bat_center_y-22/2,0]) cube([box_w,22,0.3]);
    }
    // wire hole
    translate([0,125,35]) rotate([90,0,0]) cylinder(d=7.5, h=10);
    // LED holes:
    translate([-2.5,75,45]) rotate([0,0,0]) cylinder(d=5.2, h=10);
    translate([20,50,45]) rotate([0,0,0]) cylinder(d=5.2, h=10);
}


difference() {
    union() {
        translate([bat_center_x,bat_center_y-25,0]) {
            cylinder(d1=45, d2=25, h=box_h);
            linear_extrude(box_h+3) text("+", size=25, halign="center", valign="center", font="Copperplate Gothic Bold:style=Regular");
        }
        translate([bat_center_x,bat_center_y+25,0]) {
            cylinder(d1=45, d2=25, h=box_h);
            linear_extrude(box_h+3) text("-", size=25, halign="center", valign="center", font="Copperplate Gothic Bold:style=Regular");
        }
    }
    translate([bat_center_x,bat_center_y-25,158-170])
        sphere(d=45+1);
    translate([bat_center_x,bat_center_y+25,158-170])
        sphere(d=45+1);
    translate([55/2,25]) cylinder(d=15,h=box_h);
    
    translate([bat_center_x,0,25]) rotate([-100,0,0]) cylinder(d=15,h=25);
}

for (x_offset = [0:1]) for (y_offset = [0:1])
translate([bat_center_x-(box_w/2)+wall_thickness+allthread_diam/2 + x_offset*(box_w-wall_thickness*2-allthread_diam), bat_center_y-(box_l/2)+wall_thickness + allthread_diam/2 + y_offset*(box_l-wall_thickness*2-allthread_diam), 0]) {
    difference() {
        cylinder(d=allthread_diam*2,h=box_h);
        cylinder(d=allthread_diam,h=box_h);
    }
}

/*
translate([0,0,1-170]) {
difference() {
    battery_whole();
    cube([55,100,160]);
    translate([55/2,25]) cylinder(d=15,h=200);
    translate([0,25-7.5]) cube([55,15,166]);
    translate([55/2-7.5,25-7.5]) cube([15,15,168]);
}
translate([56,-20,15]) rotate([90,0,90]) linear_extrude(height=10) scale([1,1,1]) import("ray.dxf");
mirror([0,1,0]) translate([-11,-120,15]) rotate([90,0,90]) linear_extrude(height=10) scale([1,1,1]) import("ray.dxf");
}
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

*/