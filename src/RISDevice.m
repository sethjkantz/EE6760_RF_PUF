function y = RISDevice(x,states,a1,a3)
    % x - input 2 tone signal, states - 4 RIS elements
    % a1 - linear coeff, a3 - 4 element specific nonlinear coefficients
    numElements = length(states);

    y = zeros(size(x));

    for n = 1:numElements

        % Configuration-dependent excitation
        if states(n) == 0
            g = 0.8;
        else
            g = 1.0;
        end

        % Local input signal
        xn = g*x;

        % Linear + nonlinear response
        yn = a1*xn + a3(n)*xn.^3;

        % Combine element contributions
        y = y + yn/numElements;

    end
end