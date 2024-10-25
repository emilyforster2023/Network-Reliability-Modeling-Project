title('Simulation Results of Compound Network with Modified p vals')
xlabel('p (Probability of Unsuccessful Individual Packet Transmission)') 
ylabel('# of Transmissions') 

%set for fig 1
hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test1 = runCompoundNetworkSimModification(1, .10, .60, .01:.99 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test1, 'marker', 'o', 'Color',"red", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off 

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test2 = runCompoundNetworkSimModification(5, .10, .60, .01:.99 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test2, 'marker', 'o', 'Color',"red", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test3 = runCompoundNetworkSimModification(10, .10, .60, .01:.99 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test3, 'marker', 'o', 'Color',"red", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

%set for fig 2
hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test4 = runCompoundNetworkSimModification(1, .60, .00, .01:.99 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test4, 'marker', 'o', 'Color',"cyan", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test5 = runCompoundNetworkSimModification(5, .60, .10, .01:.99 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test5, 'marker', 'o', 'Color',"cyan", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test6 = runCompoundNetworkSimModification(10, .60, .10, .01:.99 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test6, 'marker', 'o', 'Color',"cyan", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

%set for fig 3
hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test7 = runCompoundNetworkSimModification(1, .60, .01:.99, .10,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test7, 'marker', 'o', 'Color',"green", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test8 = runCompoundNetworkSimModification(5, .60, .01:.99, .10 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test8, 'marker', 'o', 'Color',"green", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(10, .60, .01:.99, .10 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"green", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

%set for fig 4
hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(1, .10, .01:.99, .60 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"yellow", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(5, .10, .01:.99, .60 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"yellow", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(10, .10, .01:.99, .60 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"yellow", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

%set for fig 5 
hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(1, .01:.99, .10, .60 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"magenta", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(5, .01:.99, .10, .60 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"magenta", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(10,.01:.99, .10, .60 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"magenta", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

%set for fig 6
hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(1, .01:.99, .60, .10 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"black", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(5, .01:.99, .60, .10 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"black", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop 
test9 = runCompoundNetworkSimModification(10,.01:.99, .60, .10 ,1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test9, 'marker', 'o', 'Color',"black", 'LineStyle', 'none'); %plots with red hollow circles
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability ​
hold off