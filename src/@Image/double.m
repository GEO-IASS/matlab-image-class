function res = double(this)
%DOUBLE Get the same image but with data stored as double
%   
%   IMGD = double(IMG);
%
%   Example
%     img = Image.read('cameraman.tif');
%     img2 = double(img);
%     show(img2, []);
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

res = Image('data', double(this.data), 'parent', this, 'type', 'intensity');
