function res = getSlice(this, varargin)
%GETSLICE Extract a slice from a 3D image
%
%   SLICE = this.getSlice(DIR, INDEX)
%   DIR is 1, 2 or 3 for x, y or z direction respectively, and INDEX is the
%   slice index, 1-indexed, between 1 and getSize(img, DIR).
%
%   The result SLICE is a 3D Image, with the dimension DIR having only one
%   element. Use the "squeeze" method to convert to a 2D image.
%
%   Example
%     % extract a slice approximately in the middle of the brain
%     I = analyze75read(analyze75info('brainMRI.hdr'));
%     img = Image3D(I);
%     zslice = getSlice(img, 3, 13);
%     zslice = squeeze(zslice);
%     show(zslice);
%
%   See also
%   slice
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-06-30,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

warning('Image:deprecated', ...
    '''getSlice'' is deprecated, use ''slice'' instead');

res = slice(this, varargin{:});
