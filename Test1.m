title('Simulation vs. Calculation Results of a Single Link Network')
xlabel('p (Probability of Unsuccessful Individual Packet Transmission)') 
ylabel('# of Transmissions') 
set(gca, 'Yscale', 'log') %setting the y axis to be logarithmic for readability 

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p 
test1(p) = runSingleLinkSim(1,(p-1)/100, 1000); %the results of the function are stored in an array, p is a percentage so it id divided by 100 before being used in the function. p is also divided by 1 because for some reason matlab will not allow me to start the array at 0, so i am making up for the indexing by an offset of -1
plot(test1, 'marker', 'o', 'Color',"red", 'LineStyle', 'none'); %plots with red hollow circles​
end
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p
testx(p) = 1/(1-((p)/100)); %the results of the function are stored in an array, p is a percentage so it is divided by 100 before being used in the function.
plot(testx,'Color',"red"); %plots with a solid red line​
end
hold off

hold on 
for p=1:100
test2(p) = runSingleLinkSim(5,(p-1)/100, 1000); %same thing as first loop, but with different k value
plot(test2, 'marker', 'o', 'Color',"cyan", "LineStyle", 'none'); %plots with cyan hollow circles
end
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p
testx2(p) = 5/(1-((p-1)/100)); %the results of the function are stored in an array, p is a percentage so it is divided by 100 before being used in the function.
plot(testx2,'Color',"cyan"); %plots with a solid red line​
end
hold off

hold on
for p=1:100 %same thing as first loop, but wth different k value
test3(p) = runSingleLinkSim(15,(p-1)/100,1000);
plot(test3, 'marker', 'o', 'Color',"yellow", 'LineStyle', 'none'); %plots with yellow hollow circles
end
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p
testx3(p) = 15/(1-((p-1)/100)); %the results of the function are stored in an array, p is a percentage so it is divided by 100 before being used in the function.
plot(testx3,'Color',"yellow"); %plots with a solid red line​
end
hold off

hold on
for p=1:100
test4(p) = runSingleLinkSim(50,(p-1)/100,1000); %same thing as first loop, but with different k value
plot(test4, 'marker', 'o', 'Color',"green", "LineStyle",'none'); %plots with green hollow circles
end
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p
testx4(p) = 50/(1-((p-1)/100)); %the results of the function are stored in an array, p is a percentage so it is divided by 100 before being used in the function.
plot(testx4,'Color',"green"); %plots with a solid red line​
end
hold off

hold on 
for p=1:100
test5(p) = runSingleLinkSim(100,(p-1)/100,1000); %same thing as first loop, but with different k value
plot(test5, 'marker', 'o', 'Color',"magenta", 'LineStyle', 'none'); %plots with magenta hollow circles 
end
hold off

hold on %to be able to map all functions on the same graphs, hold on and hold off was used for each loop
for p=1:100  %runs the loop for every value of p
testx5(p) = 100/(1-((p-1)/100)); %the results of the function are stored in an array, p is a percentage so it is divided by 100 before being used in the function.
plot(testx5,'Color',"magenta"); %plots with a solid red line​
end
hold off