function [x]=bisect(a,b,eps) % Funkcja realizujaca metode bisekcji 

while abs( a - b ) > eps % Warunek koncowy - punkty pomiedzy ktorymi liczymy zblizyly sie na odleglosc abs 
    x = ( a + b ) / 2 ; % Policzenie punktu pomiedzy p. wejsciowymi
    if( abs( fzad(x) ) < eps) % Warunek koncowy - policzenie zera z dokladnoscia eps
        break;
    else
        if(fzad(x) * fzad(a) <0) % W zaleznosci od tego z ktorej strony wypadl punkt x podmieniamy wartosc a lub b na x
            b = x;
        else
            a = x;
        end
    end
end
    