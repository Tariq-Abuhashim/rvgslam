function x = repcol(x, N)
%function xrep = repcol(x, N)
%
% Replicate a column vector x = [x1; x2; ...] so that
% 
%           x1 x1 x1 ...
% xrep =    x2 x2 x2 ...
%           ...
%
% This function is much faster than using the MatLab function REPMAT.
% ie, xr = repmat(x, 1, N);
%
% This function is identical to repvec.m.
%
% Tim Bailey 2005.

%x = x(:, ones(1,N));
x = x*ones(1,N);

% Note, there are two alternatives:
%   x = x(:, ones(1,N)); and
%   x = x*ones(1,N);
% The latter appears to be faster for Matlab R2010a (Tim 2011).
