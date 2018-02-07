box_w=99;
box_l=144;
box_h=7.5;

corner_r=5;
corner_h=3;

wall_thickness=2;

bat_center_x=55/2;
bat_center_y=100/2;

allthread_diam=7.35; // quarter inch

difference() {
    minkowski() {
        translate([bat_center_x,bat_center_y,(box_h-corner_h)/2]) {
            cube([box_w-corner_r*2,
                  box_l-corner_r*2,
                  box_h-corner_h], center=true);
        }
        cylinder(r=corner_r,corner_h, center=false);
    }
    
    for (x_offset = [0:1]) for (y_offset = [0:1])
    translate([bat_center_x-(box_w/2)+wall_thickness+allthread_diam/2 + x_offset*(box_w-wall_thickness*2-allthread_diam), bat_center_y-(box_l/2)+wall_thickness + allthread_diam/2 + y_offset*(box_l-wall_thickness*2-allthread_diam), 0]) {
        cylinder(d=allthread_diam,h=box_h);
    }
}


for (x_offset = [0:1]) for (y_offset = [0:1])
translate([bat_center_x-(box_w/2)+wall_thickness+allthread_diam/2 + x_offset*(box_w-wall_thickness*2-allthread_diam), bat_center_y-(box_l/2)+wall_thickness + allthread_diam/2 + y_offset*(box_l-wall_thickness*2-allthread_diam), 0]) {
    difference() {
        cylinder(d=allthread_diam*2,h=box_h);
        cylinder(d=allthread_diam,h=box_h);
    }
}