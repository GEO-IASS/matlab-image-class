function res = min(this, varargin)
% Computes the minimal value within image

if isempty(varargin)
    % compute minimal value within image
    
    if size(this, 4) == 1
        % case of grayscale image
        res = min(this.data(:));
        
    else
        % case of color or vector images
        nc = channelNumber(this);
        res = zeros(1, nc);
        for i = 1:nc
            dat = this.data(:,:,:,i,:);
            res(i) = min(dat(:));
        end
    end
    
    return;
end


% compute the minimum image between image and second argument

% extract data
[data1, data2, parent, name1, name2] = parseInputCouple(this, varargin{1}, ....
    inputname(1), inputname(2));

% compute new data
class0 = class(parent.data);
newData = min(cast(data1, class0), cast(data2, class0));

% create result image
newName = strcat('min(', name1, ',', name2, ')');
res = Image('data', newData, 'parent', parent, 'name', newName);
