function P = P_from_R_t(R, t, K)

% calculates the camera matrix given rotation, translation, and intrinsic
% parameters matrix
%
% notes:
% notice that if using normalised image coordinates:
%   x_n = K\x
%   then E = F. In this case, the following two functions should produce the
%   same results
%       P1 = eye(3); % not necessarly though
%       P2 = P_from_R_t(R, t)
%       F = F_from_P1_P2(P1, P2)
%       E = E_from_R_t(R, t)
%
% In order to calculate the fundamental matrix, use this function
%       F = F_from_E (E, K1, K2)
%   it produces more accurate results than calculating F from normalised
%   camera matrices P1 and P2
%
% Tariq Abuhashim


P = [R t];

if nargin > 2
    P = K * P;
end