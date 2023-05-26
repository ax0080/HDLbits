module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire ab2, cd2, abc1, def1;
    
    and and1(ab2, p2a, p2b);
    and and2(cd2, p2c, p2d);
    or or1(p2y, ab2, cd2);
    
    and and3(abc1, p1a, p1b, p1c);
    and and4(def1, p1d, p1e, p1f);
    or or2(p1y, abc1, def1);
    
endmodule