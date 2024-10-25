%% Function runTwoSeriesLinkSim() 
% Parameters 
%  K - the number of packets in the application message 
%  p - the probability of failure  
%  N - the number of simulations to run 
% 
% Returns: the average numeric result across the total simulations 

function result = runTwoSeriesLinkSim(K, p, N)

simResults = ones(1, N); % a place to store the result of each simulation 

 for i=1:N 
        txAttemptCount = 0; % transmission count 
        pktSuccessCount = 0; % number of packets that have made it across 
   
        while pktSuccessCount < K %runs until messae is fully transmitted
             
            r1 = rand; % gen random num1 to determine if packet is successful (r1 > p)  
            r2 = rand; % gen random num2 to determine if packet is successful (r2 > p) 
            txAttemptCount = txAttemptCount + 1; % count 1st attempt 

               while r1 < p  % while packet transmissions is not successful for first segment(r1 < p) 
                   r1 = rand; % transmit again, generate new success check value r1
                   txAttemptCount = txAttemptCount + 1; % count additional attempt  
               end 

               while r2 < p  % while packet transmissions is not successful for second segment(r2 < p) 
                   r2 = rand; % transmit again, generate new success check value r2
                    txAttemptCount = txAttemptCount + 1; % count additional attempt 
               end 

            pktSuccessCount = pktSuccessCount + 1; % increase success count after success (r1 & r2 > p)                                         
        end 
        simResults([i]) = txAttemptCount; % record total number of attemped transmissions before entire application msg (K successful packets) transmitted 
  end 
    result = mean(simResults); % average the results stored in the array
end