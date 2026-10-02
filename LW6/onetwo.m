function varargout = onetwo(x)
    if nargin ~= 1
    error('onetwo requires exactly 1 input argument.');
    end

    if nargout > 2
        error('onetwo returns at most 2 output arguments.');
    end

    varargout{1} = sin(x);

    if nargout == 2
        varargout{2} = cos(x);
    end
end