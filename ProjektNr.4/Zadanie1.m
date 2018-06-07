%% Given of the project %%
range = 20;
%for j = 1:100
    j = 10;
    step1 = 0.3%0.001 * j;
    step2 = 0.4%0.002 * j;

    F1 = @(t,x) x(2) + x(1)*(0.9 - x(1)*x(1) - x(2)*x(2));   
    F2 = @(t,x) -x(1) + x(2)*(0.9 - x(1)*x(1) - x(2)*x(2));   

    x1 = [10 0 8 0.001];
    x2 = [8 9 0 0.001];

    X1 = [0:step1:range];
    X2 = [0:step2:range];

    for i = 1:4

        [ y1 , y2 , err] = RungyKutta(step1,range,F1,F2, x1(i), x2(i) );
        [ yd1 , yd2 , errd] = RungyKutta(step2,range,F1,F2, x1(i), x2(i) );

        f = figure('visible','off');
        hold on;
        plot(X1', err(:,1));
        plot(X1' , err(:,2));
        title('Error');

        % savefig(['IMG\rk4err_' int2str(i) '_' num2str(step1) '_' num2str(step2)  '.fig']);

        % f= openfig(['IMG\rk4err_' int2str(i) '_' num2str(step1) '_' num2str(step2) '.fig']);

        print(f, ['IMG\rk4err_' int2str(i) '_' num2str(step1) '_' num2str(step2) '.png'], '-dpng');

        hold off;
        f = figure('visible','off');

        hold on;
        plot(X2' , errd(:,1));
        plot(X2' , errd(:,2));

            title('Error');

        %savefig(['IMG\rk4errd_' int2str(i) '_' num2str(step1) '_' num2str(step2)  '.fig']);

        %f= openfig(['IMG\rk4errd_' int2str(i) '_' num2str(step1) '_' num2str(step2) '.fig']);

        print(f, ['IMG\rk4errd_' int2str(i) '_' num2str(step1) '_' num2str(step2) '.png'], '-dpng');

        hold off;

        f = figure();

        hold on;
        plot(y1 , y2);
        plot(yd1 , yd2);

        title('Trajectory');

        savefig(['IMG\rk4_' int2str(i) '_' num2str(step1) '_' num2str(step2)  '.fig']);

        %f= openfig(['IMG\rk4_' int2str(i) '_' num2str(step1) '_' num2str(step2) '.fig']);

        print(f, ['IMG\rk4_' int2str(i) '_' num2str(step1) '_' num2str(step2) '.png'], '-dpng');

        hold off;

    end
%end