function b = isScalar(this)
%ISSCALAR Checks if an image is scalar (only one channel)
%
%   Note: deprecated ! use "isScalarImage" instead.
%
%   B = isScalar(IMG)
%   Returns trus if the image is scalar, i.e. has only one channel. Example
%   of scalar images includes grayscale images, binary images, and
%   intensity images.
%
%   Example
%     img = Image.read('cameraman.tif');
%     isScalar(img)
%     ans =
%         1
%
%     img = Image.read('peppers.png');
%     isScalar(img)
%     ans =
%         0
%
%   See also
%     isVector, isGrayscale, isBinary, isIntensity
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2011-09-26,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.

warning('Image:deprecated', ...
    'method "isScalar" is deprecated, use "isScalarImage" instead');

b = this.dataSize(4) == 1;