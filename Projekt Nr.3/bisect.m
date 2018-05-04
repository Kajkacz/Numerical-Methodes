function [x]=bisect(a,b,eps, imax) % Funkcja realizujaca metode bisekcji 

x = zeros(imax - 1 ,1);
i = 1;

while abs( a - b ) > eps && i < imax% Warunek koncowy - punkty pomiedzy ktorymi liczymy zblizyly sie na odleglosc abs 
    x0 = ( a + b ) / 2 ; % Policzenie punktu pomiedzy p. wejsciowymi
    if( abs( fzad(x0) ) < eps) % Warunek koncowy - policzenie zera z dokladnoscia eps
        break;
    else
        if(fzad(x0) * fzad(a) <0) % W zaleznosci od tego z ktorej strony wypadl punkt x podmieniamy wartosc a lub b na x
            b = x0;
        else
            a = x0;
        end
    end
    x(i) = x0;
    i = i + 1;
end
    
x(imax -1) = x0;