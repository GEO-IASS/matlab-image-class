function b = isIntensity(this)
%isIntensity Checks if an image is intensity (signed scalar)
%
%   Note: deprecated ! use "isIntensityImage" instead.
%
%   B = isIntensity(IMG)
%   Returns true if an image is intensity. The difference between intensity
%   and grayscale images is that intensity images are signed. 
%
%
%   Example
%     img = Image.read('cameraman.tif');
%     isIntensity(img)
%     ans =
%         0
%     grad = norm(gradient(img));
%     isIntensity(grad)
%     ans =
%         1
%
%     img = Image.read('peppers.png');
%     isIntensity(img)
%     ans =
%         0
%
%
%   See also
%     isGrayscale, isScalar, isLabel, isColor, isVector
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2011-09-25,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.

warning('Image:deprecated', ...
    'method "isIntensity" is deprecated, use "isIntensityImage" instead');

b = strcmp(this.type, 'intensity');
