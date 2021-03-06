function nc = getChannelNumber(this)
%GETCHANNELNUMBER Return the number of channels of the image
%
%   NC = getChannelNumber(IMG)
%
%   Example
%   getChannelNumber
%
%   Deprecated, use 'channelNumber' instead.
%
%   See also
%   getSize, getElementSize
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-11-17,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

warning('Image:deprecated', ...
    '''getChannelNumber'' is deprecated, use ''channelNumber'' instead');

nc = size(this.data, 4);