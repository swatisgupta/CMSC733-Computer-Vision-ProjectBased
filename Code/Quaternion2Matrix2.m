function [ R ] = Quaternion2Matrix2( qs )
%Q2R Summary of this function goes here
%   Detailed explanation goes here
    R = zeros(3, 3);
    % unit q
%     qs = qs';
    q = qs(:, 1);
    q = q./norm(q);
    qw = q(1);
    qx = q(2);
    qy = q(3);
    qz = q(4);
    R(:, :) = [...
        1 - 2*qz^2 - 2*qy^2,       -2*qz*qw + 2*qy*qx,       2*qy*qw + 2*qz*qx;
        2*qx*qy + 2*qw*qz,          1-2*qz^2-2*qx^2,         2*qz*qy - 2*qx*qw;
        2*qx*qz - 2*qw*qy,          2*qy*qz + 2*qw*qx,       1-2*qy^2-2*qx^2];


end

