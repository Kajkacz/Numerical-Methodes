imax = 50;

xb1 = bisect(11,7,10e-5,imax); %Pierwsze zero funkcji metoda bisekcji
xb2 = bisect(7,2,10e-5,imax); %Drugie zero funkcji metoda bisekcji

xs1 = secants(11,7,10e-5,imax); %Pierwsze zero funkcji metoda siecznych
xs2 = secants(7,2,10e-5,imax); %Drugie zero funkcji metoda siecznych

Ans = [xb1(imax - 1),xb2(imax - 1),xs1(imax - 1),xs2(imax - 1)]; % Wektor z rozwiazaniami dla ulatwienia rysowania

X = 2:0.1:11; % Nasz przedzial z probkowaniem co 0.1
Y = arrayfun(@(x) fzad(x),X); %Wyliczenie wartosci naszej funkcji do narysowania wykresu

figure; % Ponizszy kod rysuje wykres
plot(X,Y);% Rysowanie wykresu funkcji
hold on;
plot(Ans,0, '-o','MarkerEdgeColor','b','MarkerFaceColor',[0.5,0.5,0.5]); % Rysowanie miejsc zerowych
hold off;

