function curve = BezierVectorized(t, control_points)    
    n = size(control_points,1) - 1;      
    
    binoms = arrayfun(@(k) nchoosek(n,k), 0:n); %arrayfun is used because nchoosek only uses scalars for whatever reason
    T = t(:);
    OneMinusT = (1-T).^(n:-1:0);  
    Ti = T.^(0:n);
    B = Ti .* OneMinusT .* binoms;    
    curve = B * control_points;       % (length(t) x D)
end