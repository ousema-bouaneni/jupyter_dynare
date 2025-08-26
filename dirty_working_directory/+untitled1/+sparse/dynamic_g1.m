function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(13, 1);
end
[T_order, T] = untitled1.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(26, 1);
g1_v(1)=(-(T(4)*exp(y(10))*T(10)));
g1_v(2)=(-((1-params(4))*exp(y(3))));
g1_v(3)=(-params(2));
g1_v(4)=(-params(7));
g1_v(5)=(-params(7));
g1_v(6)=(-params(2));
g1_v(7)=(-((1-params(3))*exp(y(7))));
g1_v(8)=exp(y(7));
g1_v(9)=(-(exp(y(7))*exp(y(12))));
g1_v(10)=T(1);
g1_v(11)=T(6);
g1_v(12)=(-(exp(y(12))*(-exp(y(8)))));
g1_v(13)=exp(y(9))-params(1)*T(2)*exp(y(9))*(1-params(4));
g1_v(14)=exp(y(9));
g1_v(15)=(-T(5));
g1_v(16)=1;
g1_v(17)=T(12);
g1_v(18)=(-(T(3)*T(13)));
g1_v(19)=T(6);
g1_v(20)=(-(exp(y(12))*(exp(y(7))-exp(y(8)))));
g1_v(21)=1;
g1_v(22)=(-(params(1)*T(2)*params(3)*exp(y(18))*exp(y(13))));
g1_v(23)=(-(params(1)*T(9)));
g1_v(24)=(-(params(1)*(T(2)*params(3)*exp(y(18))*exp(y(13))+T(9))));
g1_v(25)=(-1);
g1_v(26)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 6, 20);
end
