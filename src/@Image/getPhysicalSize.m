function s = getPhysicalSize(this)
%GETPHYSICALSIZE  Return the physical size of an image, in user unit
%
%   siz = img.getPhysicalSize();
%
%   Example
%   img = Image2D.read('cameraman.tif');
%   img.getPhysicalSize()
%   ans =
%       256 256
%
%   Deprecated, use 'physicalSize' instead.
%
%   See also
%   getDimension
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-07-13,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

warning('Image:deprecated', ...
    '''getPhysicalSize'' is deprecated, use ''physicalSize'' instead');

nd = ndims(this);

% multiply size of data array by element spacing
s = this.dataSize(1:nd) .* this.spacing;
