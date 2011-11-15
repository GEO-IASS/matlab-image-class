function res = morphoGradient(this, se)
%MORPHOGRADIENT Morphological gradient of an intensity image
%
%   RES = morphoGradient(IMG, SE)
%   Computes the morphological gradient of the image IMG, using the
%   structuring element SE.
%
%   RES = morphoGradient(IMG)
%   Uses a n-dimensional ball (3-by-3 square in 2D, 3-by-3-by-3 cube in 3D)
%   as default structuring element.
%
%   Morphological gradient is defined as the difference of a morphological
%   dilation and a morphological erosion with the same structuring element:
%       morphoGradient(I, SE) <=> dilation(I, SE) - erosion(I, SE)
%
%   This function is mainly a shortcut to apply all operations in one call.
%
%   Example
%     img = Image.read('cameraman.tif');
%     se = ones(3, 3);
%     mgrad = morphoGradient(img, se);
%     show(mgrad);
%
%   See also
%   gradient, dilation, erosion, morphoLaplacian, minus
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2011-06-14,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.

% default structuring element
if nargin == 1
    se = ones(3 * ones(1, this.dimension));
end

% compute gradient, by keeping image data type
res = imsubtract(imdilate(this.data, se), imerode(this.data, se));

% create result image
res = Image.create('data', res, 'parent', this);
