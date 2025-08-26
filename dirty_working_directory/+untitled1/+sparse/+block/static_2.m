function [y, T, residual, g1] = static_2(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  T(1)=exp(y(2));
  T(2)=exp(y(5));
  T(3)=T(1)*params(5)*T(2)^(1+params(6));
  T(4)=exp(y(1));
  residual(1)=(T(3))-((1-params(3))*T(4));
  T(5)=exp(y(3));
  T(6)=exp(y(6));
  residual(2)=(T(5))-(params(1)*(T(4)*params(3)*T(6)+T(5)*(1-params(4))));
  T(7)=exp(y(4));
  T(8)=T(7)*T(5)^params(3);
  T(9)=T(2)^(1-params(3));
  residual(3)=(T(4))-(T(8)*T(9));
  residual(4)=(T(5))-(T(5)*(1-params(4))+T(6)*(T(4)-T(1)));
if nargout > 3
    g1_v = NaN(11, 1);
g1_v(1)=(-((1-params(3))*T(4)));
g1_v(2)=(-(params(1)*T(4)*params(3)*T(6)));
g1_v(3)=T(4);
g1_v(4)=(-(T(4)*T(6)));
g1_v(5)=T(5)-params(1)*T(5)*(1-params(4));
g1_v(6)=(-(T(9)*T(7)*T(5)*getPowerDeriv(T(5),params(3),1)));
g1_v(7)=T(5)-T(5)*(1-params(4));
g1_v(8)=T(1)*params(5)*T(2)*getPowerDeriv(T(2),1+params(6),1);
g1_v(9)=(-(T(8)*T(2)*getPowerDeriv(T(2),1-params(3),1)));
g1_v(10)=T(3);
g1_v(11)=(-(T(6)*(-T(1))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 4);
end
end
