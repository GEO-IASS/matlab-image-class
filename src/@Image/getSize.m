function s = getSize(this, dim)
%GETSIZE Return the size of an image, in pixels
%
%   siz = img.getSize()
%
%   Example
%   img = Image2D.read('cameraman.tif');
%   img.getSize()
%   ans =
%       256 256
%
%   Deprecated, use 'size' instead.
%
%   See also
%   getDimension, getPhysicalExtent
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-07-13,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

warning('Image:deprecated', ...
    '''getSize'' is deprecated, use ''size'' instead');

if nargin == 1
    s = this.dataSize(1:this.dimension);
else
    s = this.dataSize(dim);
end
