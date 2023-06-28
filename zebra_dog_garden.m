%% Mindful Design in MATLAB
 %
 % Purpose: This code provides a basic overview of Mindful Design principles
 % in the MATLAB programming language.

% Preallocate variables
A = 0;
B = 0;

%%  1) Work Smarter, Not Harder

% Start by preallocating arrays
A = cell(1000,1000);
B = nan(1000,1000);

%%  2) Don't Reinvent the Wheel 

% Utilize available functions
[C,D] = eig(A);
E = sortrows(B);

%%  3) Iterate Responsibly 

for i = 1:1000
    for j = 1:1000
        
        % Put a limit on iterations as needed
        if j > 500
            break;
        end
        
        % Run calculations
        A(i,j) = A(i,j) + B(i,j);
    end
end

%%  4) Test Your Results

% Create a matrix for results
results = zeros(1000,1000);

% Check for accuracy
for i = 1:1000
    for j = 1:1000
        results(i,j) = A(i,j) + E(i,j);
    end
end

% Verify result accuracy
assert(isequal(results,C + D));

%%  5) Clean Up After Yourself

% Remove unnecessary variables
clearvars A B C D;