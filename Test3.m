title('Simulation Results of Two Parallel Link Network')
xlabel('p (Probability of Unsuccessful Individual Packet Transmission)') 
ylabel('# of Transmissions') 
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p 
test1(p) = runTwoSeriesLinkSim(1,(p-1)/100,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test1, 'marker', 'o', 'Color',"red", 'LineStyle', 'none'); %plots with red hollow circles ​
end
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p 
test2(p) = runTwoSeriesLinkSim(5,(p-1)/100,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test2, 'marker', 'o', 'Color',"yellow", 'LineStyle', 'none'); %plots with red hollow circles​
end
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p 
test3(p) = runTwoSeriesLinkSim(15,(p-1)/100,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test3, 'marker', 'o', 'Color',"green", 'LineStyle', 'none'); %plots with red hollow circles​
end
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p 
test4(p) = runTwoSeriesLinkSim(50,(p-1)/100,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test4, 'marker', 'o', 'Color',"cyan", 'LineStyle', 'none'); %plots with red hollow circles​
end
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p 
test5(p) = runTwoSeriesLinkSim(100,(p-1)/100,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test5, 'marker', 'o', 'Color',"magenta", 'LineStyle', 'none'); %plots with red hollow circles​
end
hold off