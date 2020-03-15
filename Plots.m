close all; clear; clc;

addpath '/Users/herrera-arcos/Documents/MATLAB/Covid-19/Data/Data_one/COVID-19-master/csse_covid_19_data/csse_covid_19_time_series'
data_confirmed = readtable('time_series_19-covid-Confirmed.csv');
data_deaths = readtable('time_series_19-covid-Recovered.csv');

data_confirmed = table2cell(data_confirmed);
% US beginning vs now of confirmed cases
[xS, yS] = size(data_confirmed);
US_confirmed = [];
j=1;
for i = 1:xS
    val = data_confirmed(i,2);
    if val{1} == "US"
        US_confirmed(j,1) = str2double(data_confirmed(i,5));
        US_confirmed(j,2) = str2double(data_confirmed(i,10));
        US_confirmed(j,3) = str2double(data_confirmed(i,20));
        US_confirmed(j,4) = str2double(data_confirmed(i,30));
        US_confirmed(j,5) = str2double(data_confirmed(i,40));
        US_confirmed(j,6) = str2double(data_confirmed(i,50));
        j = j+1;
    end
end

X = [1 2 3 4 5 6];
names = {'Jan 22'; 'Jan 27'; 'Feb 6'; 'Feb 16'; 'Feb 26'; 'Mar 7'};
hold on
for i=1:82
    plot(X, US_confirmed(i,:), 'color', [255/255 165/265 0]);
    scatter(X, US_confirmed(i,:), 'filled', 'MarkerFaceColor', 'k');
end
xticks(X)
xticklabels(names)
ylabel('Confirmed Cases');
xlim([0 7])

total_5 = sum(US_confirmed(:,1));
total_10 = sum(US_confirmed(:,2));
total_20 = sum(US_confirmed(:,3));
total_30 = sum(US_confirmed(:,4));
total_40 = sum(US_confirmed(:,5));
total_50 = sum(US_confirmed(:,6));
total = [total_5;total_10;total_20;total_30;total_40;total_50];
plot(X, total, 'color', [255/265 0/265 0/265]);
scatter(X, total, 'filled', 'MarkerFaceColor', 'k');
title('COVID-19 time-series confirmed cases in the US')

%%
close all; clear; clc;

addpath '/Users/herrera-arcos/Documents/MATLAB/Covid-19/Data/Data_two/COVID-19-master/csse_covid_19_data/csse_covid_19_time_series'
data_confirmed = readtable('time_series_19-covid-Confirmed.csv');
data_deaths = readtable('time_series_19-covid-Recovered.csv');

data_confirmed = table2cell(data_confirmed);
% US beginning vs now of confirmed cases
[xS, yS] = size(data_confirmed);
countries_latam = ["Mexico", "Brazil", "Argentina", "Chile", "Colombia", "Peru"];
[xCl, yCl] = size(countries_latam);
countries_high = ["Italy", "Iran", "Korea, South", "Spain", "France", "Germany", "US"];
[xCh, yCh] = size(countries_high);
k_MEX=1;
k_BZ=1;
k_ARG=1;
k_CH=1;
k_COL=1;
k_PER=1;
k=1;
for i = 1:xS
    val = data_confirmed(i,2);
    for j=1:yCl
        if val{1} == countries_latam(j)
            if j==1
                MEX_confirmed(k_MEX,1) = str2double(data_confirmed(i,5));
                MEX_confirmed(k_MEX,2) = str2double(data_confirmed(i,20));
                MEX_confirmed(k_MEX,3) = str2double(data_confirmed(i,40));
                MEX_confirmed(k_MEX,4) = str2double(data_confirmed(i,50));
                MEX_confirmed(k_MEX,5) = str2double(data_confirmed(i,53));
                MEX_confirmed(k_MEX,6) = str2double(data_confirmed(i,54));
                MEX_confirmed(k_MEX,7) = str2double(data_confirmed(i,55));
                MEX_confirmed(k_MEX,8) = str2double(data_confirmed(i,56));
                k_MEX = k_MEX+1;
            elseif j==2
                BZ_confirmed(k_BZ,1) = str2double(data_confirmed(i,5));
                BZ_confirmed(k_BZ,2) = str2double(data_confirmed(i,20));
                BZ_confirmed(k_BZ,3) = str2double(data_confirmed(i,40));
                BZ_confirmed(k_BZ,4) = str2double(data_confirmed(i,50));
                BZ_confirmed(k_BZ,5) = str2double(data_confirmed(i,53));
                BZ_confirmed(k_BZ,6) = str2double(data_confirmed(i,54));
                BZ_confirmed(k_BZ,7) = str2double(data_confirmed(i,55));
                BZ_confirmed(k_BZ,8) = str2double(data_confirmed(i,56));
                k_BZ = k_BZ+1;
             elseif j==3
                ARG_confirmed(k_ARG,1) = str2double(data_confirmed(i,5));
                ARG_confirmed(k_ARG,2) = str2double(data_confirmed(i,20));
                ARG_confirmed(k_ARG,3) = str2double(data_confirmed(i,40));
                ARG_confirmed(k_ARG,4) = str2double(data_confirmed(i,50));
                ARG_confirmed(k_ARG,5) = str2double(data_confirmed(i,53));
                ARG_confirmed(k_ARG,6) = str2double(data_confirmed(i,54));
                ARG_confirmed(k_ARG,7) = str2double(data_confirmed(i,55));
                ARG_confirmed(k_ARG,8) = str2double(data_confirmed(i,56));
                k_ARG = k_ARG+1;
             elseif j==4
                CH_confirmed(k_CH,1) = str2double(data_confirmed(i,5));
                CH_confirmed(k_CH,2) = str2double(data_confirmed(i,20));
                CH_confirmed(k_CH,3) = str2double(data_confirmed(i,40));
                CH_confirmed(k_CH,4) = str2double(data_confirmed(i,50));
                CH_confirmed(k_CH,5) = str2double(data_confirmed(i,53));
                CH_confirmed(k_CH,6) = str2double(data_confirmed(i,54));
                CH_confirmed(k_CH,7) = str2double(data_confirmed(i,55));
                CH_confirmed(k_CH,8) = str2double(data_confirmed(i,56));
                k_CH = k_CH+1;
             elseif j==5
                COL_confirmed(k_COL,1) = str2double(data_confirmed(i,5));
                COL_confirmed(k_COL,2) = str2double(data_confirmed(i,20));
                COL_confirmed(k_COL,3) = str2double(data_confirmed(i,40));
                COL_confirmed(k_COL,4) = str2double(data_confirmed(i,50));
                COL_confirmed(k_COL,5) = str2double(data_confirmed(i,53));
                COL_confirmed(k_COL,6) = str2double(data_confirmed(i,54));
                COL_confirmed(k_COL,7) = str2double(data_confirmed(i,55));
                COL_confirmed(k_COL,8) = str2double(data_confirmed(i,56));
                k_COL = k_COL+1;
            else
                PER_confirmed(k_PER,1) = str2double(data_confirmed(i,5));
                PER_confirmed(k_PER,2) = str2double(data_confirmed(i,20));
                PER_confirmed(k_PER,3) = str2double(data_confirmed(i,40));
                PER_confirmed(k_PER,4) = str2double(data_confirmed(i,50));
                PER_confirmed(k_PER,5) = str2double(data_confirmed(i,53));
                PER_confirmed(k_PER,6) = str2double(data_confirmed(i,54));
                PER_confirmed(k_PER,7) = str2double(data_confirmed(i,55));
                PER_confirmed(k_PER,8) = str2double(data_confirmed(i,56));
                k_PER = k_PER+1;
            end
        end
    end
end

k_ITA=1;
k_IRA=1;
k_KOR=1;
k_SPA=1;
k_FRA=1;
k_GER=1;
k_US=1;
for i = 1:xS
    val = data_confirmed(i,2);
    for j=1:yCh
        if val{1} == countries_high(j)
            if j==1
                ITA_confirmed(k_ITA,1) = str2double(data_confirmed(i,5));
                ITA_confirmed(k_ITA,2) = str2double(data_confirmed(i,20));
                ITA_confirmed(k_ITA,3) = str2double(data_confirmed(i,40));
                ITA_confirmed(k_ITA,4) = str2double(data_confirmed(i,50));
                ITA_confirmed(k_ITA,5) = str2double(data_confirmed(i,53));
                ITA_confirmed(k_ITA,6) = str2double(data_confirmed(i,54));
                ITA_confirmed(k_ITA,7) = str2double(data_confirmed(i,55));
                ITA_confirmed(k_ITA,8) = str2double(data_confirmed(i,56));
                k_ITA = k_ITA+1;
            elseif j==2
                IRA_confirmed(k_IRA,1) = str2double(data_confirmed(i,5));
                IRA_confirmed(k_IRA,2) = str2double(data_confirmed(i,20));
                IRA_confirmed(k_IRA,3) = str2double(data_confirmed(i,40));
                IRA_confirmed(k_IRA,4) = str2double(data_confirmed(i,50));
                IRA_confirmed(k_IRA,5) = str2double(data_confirmed(i,53));
                IRA_confirmed(k_IRA,6) = str2double(data_confirmed(i,54));
                IRA_confirmed(k_IRA,7) = str2double(data_confirmed(i,55));
                IRA_confirmed(k_IRA,8) = str2double(data_confirmed(i,56));
                k_IRA = k_IRA+1;
             elseif j==3
                KOR_confirmed(k_KOR,1) = str2double(data_confirmed(i,5));
                KOR_confirmed(k_KOR,2) = str2double(data_confirmed(i,20));
                KOR_confirmed(k_KOR,3) = str2double(data_confirmed(i,40));
                KOR_confirmed(k_KOR,4) = str2double(data_confirmed(i,50));
                KOR_confirmed(k_KOR,5) = str2double(data_confirmed(i,53));
                KOR_confirmed(k_KOR,6) = str2double(data_confirmed(i,54));
                KOR_confirmed(k_KOR,7) = str2double(data_confirmed(i,55));
                KOR_confirmed(k_KOR,8) = str2double(data_confirmed(i,56));
                k_KOR = k_KOR+1;
             elseif j==4
                SPA_confirmed(k_SPA,1) = str2double(data_confirmed(i,5));
                SPA_confirmed(k_SPA,2) = str2double(data_confirmed(i,20));
                SPA_confirmed(k_SPA,3) = str2double(data_confirmed(i,40));
                SPA_confirmed(k_SPA,4) = str2double(data_confirmed(i,50));
                SPA_confirmed(k_SPA,5) = str2double(data_confirmed(i,53));
                SPA_confirmed(k_SPA,6) = str2double(data_confirmed(i,54));
                SPA_confirmed(k_SPA,7) = str2double(data_confirmed(i,55));
                SPA_confirmed(k_SPA,8) = str2double(data_confirmed(i,56));
                k_SPA = k_SPA+1;
             elseif j==5
                FRA_confirmed(k_FRA,1) = str2double(data_confirmed(i,5));
                FRA_confirmed(k_FRA,2) = str2double(data_confirmed(i,20));
                FRA_confirmed(k_FRA,3) = str2double(data_confirmed(i,40));
                FRA_confirmed(k_FRA,4) = str2double(data_confirmed(i,50));
                FRA_confirmed(k_FRA,5) = str2double(data_confirmed(i,53));
                FRA_confirmed(k_FRA,6) = str2double(data_confirmed(i,54));
                FRA_confirmed(k_FRA,7) = str2double(data_confirmed(i,55));
                FRA_confirmed(k_FRA,8) = str2double(data_confirmed(i,56));
                k_FRA = k_FRA+1;
             elseif j==6
                GER_confirmed(k_GER,1) = str2double(data_confirmed(i,5));
                GER_confirmed(k_GER,2) = str2double(data_confirmed(i,20));
                GER_confirmed(k_GER,3) = str2double(data_confirmed(i,40));
                GER_confirmed(k_GER,4) = str2double(data_confirmed(i,50));
                GER_confirmed(k_GER,5) = str2double(data_confirmed(i,53));
                GER_confirmed(k_GER,6) = str2double(data_confirmed(i,54));
                GER_confirmed(k_GER,7) = str2double(data_confirmed(i,55));
                GER_confirmed(k_GER,8) = str2double(data_confirmed(i,56));
                k_GER = k_GER+1;
            else
                US_confirmed(k_US,1) = str2double(data_confirmed(i,5));
                US_confirmed(k_US,2) = str2double(data_confirmed(i,20));
                US_confirmed(k_US,3) = str2double(data_confirmed(i,40));
                US_confirmed(k_US,4) = str2double(data_confirmed(i,50));
                US_confirmed(k_US,5) = str2double(data_confirmed(i,53));
                US_confirmed(k_US,6) = str2double(data_confirmed(i,54));
                US_confirmed(k_US,7) = str2double(data_confirmed(i,55));
                US_confirmed(k_US,8) = str2double(data_confirmed(i,56));
                k_US = k_US+1;
            end
        end
    end
end
% sum FRA
FRA_confirmed = sum(FRA_confirmed);
US_confirmed = sum(US_confirmed);

%%
X = [1 2 3 4 5 6 7 8];
names = {'Jan 22', 'Feb 6', 'Feb 26', 'Mar 7', 'Mar 10', 'Mar 11', 'Mar 12', 'Mar 13'};

hold on
plot(X, BZ_confirmed, 'LineWidth', 6); %'color', [255/255 165/265 0]
scatter(X, BZ_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, MEX_confirmed, 'LineWidth', 6);
scatter(X, MEX_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, ARG_confirmed, 'LineWidth', 6);
scatter(X, ARG_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, CH_confirmed, 'LineWidth', 6);
scatter(X, CH_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, COL_confirmed, 'LineWidth', 6);
scatter(X, COL_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, PER_confirmed, 'LineWidth', 6);
scatter(X, PER_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
legend('Brazil', 'Mexico', 'Argentina', 'Chile', 'Colombia', 'Peru')

xticks(X)
xticklabels(names)
ylabel('Confirmed Cases');
xlim([0 8])

title('COVID-19 time-series confirmed cases in LatinAmerica')

figure
hold on
plot(X, FRA_confirmed, 'LineWidth', 6); %'color', [255/255 165/265 0]
scatter(X, FRA_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, GER_confirmed, 'LineWidth', 6);
scatter(X, GER_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, IRA_confirmed, 'LineWidth', 6);
scatter(X, IRA_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, ITA_confirmed, 'LineWidth', 6);
scatter(X, ITA_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, KOR_confirmed, 'LineWidth', 6);
scatter(X, KOR_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, SPA_confirmed, 'LineWidth', 6);
scatter(X, SPA_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, US_confirmed, 'LineWidth', 6);
scatter(X, US_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
legend('France', 'Germany', 'Iran', 'Italy', 'South Korea', 'Spain', 'US')

xticks(X)
xticklabels(names)
ylabel('Confirmed Cases');
xlim([0 8])

title('COVID-19 time-series confirmed cases in Europe and US')

figure
hold on
plot(X, SPA_confirmed, 'LineWidth', 6);
scatter(X, SPA_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, FRA_confirmed, 'LineWidth', 6); %'color', [255/255 165/265 0]
scatter(X, FRA_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, GER_confirmed, 'LineWidth', 6);
scatter(X, GER_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
plot(X, US_confirmed, 'LineWidth', 6);
scatter(X, US_confirmed, 'filled', 'MarkerFaceColor', 'k', 'HandleVisibility','off');
legend('Spain', 'France', 'Germany', 'US')

xticks(X)
xticklabels(names)
ylabel('Confirmed Cases');
xlim([0 8])

title('COVID-19 time-series confirmed cases in Europe and US')
