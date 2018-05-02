function x = secants(x1,x2,eps) % Funkcja realizujaca metode siecznych

if(abs(fzad(x2)-fzad(x1))<eps) % Sprawdzenie czy punkty wejsciowe nie leza zbyt blisko
    error("Zle punkty wyjsciowe");
    return;
end

f1 = fzad(x1); % Policzenie wartosci funkcji w p. wejsciowych
f2 = fzad(x2); 

if(f1<f2) % Zamienienie miejscami punktow jesli wartosc w x1 jest mniejsza niz w x2
    a = x1;
    x1= x2;
    x2 = a;
    f1 = fzad(x1);
    f2 = fzad(x2);
end

while abs(x2-x1)>eps % Warunek koncowy - jesli punkty pomiedzy ktorymi liczymy zbliza sie do odleglosci eps
    x = x1 - (f1*(x1-x2))/(f1-f2); % Obliczenie nastepnego punkty
    f = fzad(x); 
    
    if(abs(f) < eps) % Warunek koncowy -  znalezienie zera z dokladnoscia do eps
        break;
    end
    
    x2 = x1; % Zmiana na punkty dla nastepnej iteracji 
    f2 = f1;
    x1 = x;
    f1 = f;
end