function [c,k] = bissecao(a,b,erro)
fa = fbi(a); % f(x) avaliado em x=a
fb = fbi(b); % f(x) avaliado em x=b
k = 0; % contador de iterações
cont = true;
if (fa*fb) > 0
    disp ('o intervalo [a, b] não é correto, mude-o');
else
    while (cont)
       if((abs(b-a)/2)<=erro)
           cont = false;
       end
       c = (a+b)/2;
       fc = fbi(c); % f(x) avaliado em x=c
       if (fa*fc)>0
         a = c;
         fa = fc;
       else
         b = c;
         fb = fc;
       end
         k = k +1;
    end
end