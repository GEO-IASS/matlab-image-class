function res = int16(this)
%INT16 Get the same image but with data stored as int16
%   
%   IMG16 = int16(IMG);
%
%   Example
%     img = Image.read('cameraman.tif');
%     img2 = int16(img);
%     show(img2);
%
%   See also
%   Image/getBuffer
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-06-29,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

res = Image('data', int16(this.data), 'parent', this);
