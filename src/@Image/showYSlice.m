function varargout = showYSlice(this, sliceIndex)
%SHOWYSLICE Show XZ slice of a 3D image
%
%   img.showYSlice(INDEX)
%   showYSlice(IMG, INDEX)
%   Display the given slice as a 3D planar image. INDEX is the slice index,
%   between 0 and img.getSize(2)-1.
%
%   Example
%   % Display 3 orthoslices of a humain head
%     img = Image.read('brainMRI.hdr');
%     figure(1); clf; hold on;
%     showZSlice(img, 13);
%     showXSlice(img, 60);
%     showYSlice(img, 80);
%     axis(physicalExtent(img));
%     view(3);
%     xlabel('x'); ylabel('y'); zlabel('z');
%
%
%   See also
%   showXSlice, showZSlice, getSlice
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-06-30,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.


%% Extract image info

% compute voxel positions
ly = yData(this);

dim = this.dataSize;
vx = ((0:dim(1))-.5)*this.spacing(1) - this.origin(1);
vz = ((0:dim(3))-.5)*this.spacing(3) - this.origin(3);

% global parameters for surface display
params = {'facecolor','texturemap', 'edgecolor', 'none'};

% compute position of voxel vertices in 3D space
[xz_x xz_z] = meshgrid(vx, vz);
xz_y = ones(size(xz_x))*ly(sliceIndex);

% extract slice in Y direction
slice = this.getSlice(2, sliceIndex);
slice = slice.squeeze().getBuffer();

% eventually converts to uint8, rescaling data between 0 and max value
if ~strcmp(class(slice), 'uint8')
    slice = double(slice);
    slice = uint8(slice*255/max(slice(:)));
end

% convert grayscale to rgb (needed by 'surface' function)
if length(size(slice))==2
    slice = repmat(slice, [1 1 3]);
end

% display voxel values in appropriate reference space
hs = surface(xz_x, xz_y, xz_z, slice, params{:});


%% process output arguments

if nargout>0
    varargout{1} = hs;
end
