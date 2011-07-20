function varargout = showOrthoSlices(this, varargin)
%SHOWORTHOSLICES Show three orthogonal slices in 3D
%
%   this.showOrthoSlices(POS)
%   POS is 1*3 row vector containing position of slices intersection point,
%   in image index coordinate between 0 and size(img)-1.
%
%   Example
%     img = Image.read('brainMRI.hdr');
%     figure(1); clf; hold on;
%     showOrthoSlices(img, [60 80 13]);
%     axis(physicalExtent(img));       % setup axis limits
%     axis equal;                      % to have equal sizes
%
%   See also
%   showXSlice, showYSlice, showZSlice, getSlice
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-06-30,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

% if no position is specified, use the center of image
if isempty(varargin)
    siz = this.dataSize;
    pos = floor(siz/2);
else
    pos = varargin{1};
end

% show each slice
hold on;
hyz = showXSlice(this, pos(1));
hxz = showYSlice(this, pos(2));
hxy = showZSlice(this, pos(3));

% use equal spacing by default
axis equal;

if nargout > 2
    varargout = {hxy, hyz, hxz};
end
