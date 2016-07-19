module clip() {
    rotate([45,0,0])
    cube([10,1.5,1.5],true);
}

module case() {
    difference() {
        translate([-49/2,-49/2,0])
        union() {
            difference() {
                cube([49,49,3]);
                translate([10,10,0])
                cube([7,4,3]);
                translate([30,25,0])
                cube([7,6,3]);
                translate([30,38,0])
                cube([4,2,3]);
            }
            difference() {
                cube([49,49,83+30]);

                translate([2,2,83-75+30])
                cube([45,45,75]);
                
                translate([3.5,3.5,0])
                cube([42,42,83-75+30]);
                
            }
        }
        
        translate([0,0,65])
        rotate([90,0,0])
        union() {
                for(x=[-2,-1,0,1,2],y=[-2,-1,0,1,2]) {
                    if(x%2==0)
                    translate([x*6,y*6+2.5,0])
                    cylinder(h=50,d=5,center=true,$fn=20);
                    else
                    translate([x*6,y*6,0])
                    cylinder(h=50,d=5,center=true,$fn=20);
                }
            }
    }
}

case();

translate([0,-49/2+1.3,95]) clip();
translate([0,49/2-1.3,95]) clip();
rotate([0,0,90]) {
translate([0,-49/2+1.3,95]) clip();
translate([0,49/2-1.3,95]) clip();
}

