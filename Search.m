function R = Search( Input , element1 , element2 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

[H W ] = size(Input);




for y = 1 : H
   
    for x = 1 : W
        
        
    
 if (Input(y,x) == [ element1 element2 ])
    
     R = true;
     
     return;
     
 end
 
 

    
end




R = false;



end

