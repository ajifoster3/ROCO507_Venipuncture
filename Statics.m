% Using SI units

% Safety factor for calculations
safety_factor = 1.2;

% Mass for parts
mass_proximal = 0.908 * safety_factor;
mass_medial = 0.29 * safety_factor;
mass_needle = 0.7 * safety_factor;  % given by mass of stepper motors,
                                    % needle, and extras

% Inner diameter + distance to teeth on both sides
% divided by 2 for radius then divided by 1000 for mm to m
pinion_annular = ((14.08 + 12) / 2) / 1000; 
pinion_proximal = ((14 + (6.041 + 6.041)) / 2) / 1000;
pinion_medial = ((14 + (6.041 + 6.041)) / 2) / 1000;

% Torque
annular_torque = torque(mass_proximal + mass_medial + mass_needle, pinion_annular)
proximal_torque = torque(mass_medial + mass_needle, pinion_proximal)
medial_torque = torque(mass_needle, pinion_medial)

% Equation for torque:
% ((mass * gravity * CoF) + (mass * acceleration)) * gear radius
function t = torque(m, r)
    % Coefficient of friction (CoF) for polycarbonate roller, at its worst
    u = 0.4;

    % Acceleration values
    gravity = 9.81;
    acceleration = 0.075;
    
    t = ((m * gravity * u) + (m * acceleration)) * r;
end