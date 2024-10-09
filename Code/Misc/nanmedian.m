function m = nanmedian(x, dim)
    if nargin < 2
        dim = 1; % default to first dimension if none provided
    end
    % Remove NaNs from the data
    xWithoutNaNs = x(~isnan(x));
    % Calculate median of non-NaN values
    m = median(xWithoutNaNs, dim);
end