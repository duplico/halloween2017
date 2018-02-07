tol=0.1;
insert_len=10;

$fn=35;

difference() {
    union() {
        cylinder(d=30, h=10);
        translate([0,0,-insert_len]) cylinder($fn=20, d=17-tol, h=insert_len);
    }

    for (dx = [-6 : 6 : 6])
        for (dy = [-6 : 6 : 6])
            translate([dx,dy,2]) cylinder(d=4.7625, h=8, $fn=10);
}