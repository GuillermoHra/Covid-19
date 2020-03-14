close all; clear; clc;

addpath '/Users/herrera-arcos/Documents/MATLAB/Coronavirus/Data/COVID-19-master/csse_covid_19_data/csse_covid_19_time_series'
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
