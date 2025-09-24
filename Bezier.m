function point = Bezier(t, control_points)
    % Bézier curve evaluation at parameter t
    % control_points: NxD matrix (N points, D dimensions)
    
    point = zeros(1, size(control_points,2));  
    n = size(control_points,1) - 1;            
    
    for i = 0:n
        B = nchoosek(n,i) .* (1-t).^(n-i) .* t.^i;
        point = point + B .* control_points(i+1,:);
    end
end
