%% Function runCompoundNetworkSimModification() 
% Parameters 
%  K - the number of packets in the application message 
%  p1 - first probability of failure 
%  p2 - second probability of failure 
%  p3 - third probabily of failure
%  N - the number of simulations to run 
% 
% Returns: the average numeric result across the total simulations 

function result = runCompoundNetworkSimModification(K, p1, p2, p3, N)

simResults = ones(1, N); % a place to store the result of each simulation 

 for i=1:N 
        txAttemptCount = 0; % transmission count 
        pktSuccessCount = 0; % number of packets that have made it across 
   
        while pktSuccessCount < K 
             
            r1 = rand; % gen random num1 to determine if packet is successful (r1 > p) 
            r2 = rand; % gen random num2 to determine if packet is successful (r2 > p) 
            r3 = rand; % gen random num3 to determine if packet is successful (r3 > p) 
            txAttemptCount = txAttemptCount + 1; % count 1st attempt 
         
            % if packet transmissions is not successful (r < p) 
            if r1 < p1 && r2 < p2
                r1 = rand; % transmit again, generate new success check value rand1 and rand2
                r2 = rand;
                txAttemptCount = txAttemptCount + 1; % count additional attempt 
            end 

             if r3 < p3
                r3 = rand; 
                 txAttemptCount = txAttemptCount + 1; % count additional attempt 
             end

         
            if r1 > p1 && r2 > p2
            txAttemptCount = txAttemptCount + 1; % count additional attempt

            if r3 < p3 
                txAttemptCount = txAttemptCount + 1; % count additional attempt
            end

            if r3 > p3 
            pktSuccessCount = pktSuccessCount + 1; % increase success count after success (r > p)
            txAttemptCount = txAttemptCount + 1; % count additional attempt
            end
            end  
        end 
     
        simResults([i]) = txAttemptCount; % record total number of attempted transmissions before entire application msg (K successful packets) transmitted 
  end 
    result = mean(simResults); % average the results stored in the array
end