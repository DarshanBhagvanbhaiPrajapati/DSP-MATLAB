%23BIT064
% x = Sequence with length Lx
% h = Sequence with length Lh
% y = Sequence with length Ly
function y = MyConv(x,h)

Lx = length(x);
Lh = length(h);
Ly = Lx + Lh - 1;

X = zeros(Ly, Lh);
X(1:Lx,1) = x;

for i = 2:Lh
        X(:,i) = [0; X(1:end-1,i-1)];
end

y = X * h(:); % : used to reshap
y = y';
end
