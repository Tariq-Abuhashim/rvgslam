function p = transform_to_relative_w(p, b)
% function p = transform_to_relative_w(p, b)
%
% Transform a list of poses [x;y;phi] relative to a base pose.
% Also works for lists of points [x;y].
%
% Tim Bailey 1999

% translate
p(1,:) = p(1,:) - b(1);
p(2,:) = p(2,:) - b(2);
p(3,:) = p(3,:) - b(3);

% rotate
Rb = w2R(b(4:6,1));
Rbt = Rb'; % rotation matrices are orthogonal; transpose equals inverse
p(1:3,:) = Rbt*p(1:3,:);

% for pose lists only
if size(p,1) == 6
%     p(4,:) = p(4,:) - b(4);
%     p(5,:) = p(5,:) - b(5);
%     p(6,:) = p(6,:) - b(6);
    for i = 1:size(p, 2)
       Rp = w2R(p(4:6,i));
       Rp = Rbt*Rp;
       p(4:6,i) = R2w(Rp)';
    end
    p(5,:) = pi_to_pi(p(5,:));
end
