function R = CornerLocations( Image )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[height width length] = size(Image);

R = zeros(4,2);

counter = 0;

f1 = false;

f2 = false;

f3 = false;

f4 = false;


for y = 1 : height
    
    
    for x = 1 : width
        
        
        RedValue = Image(y,x,1);
        
        GreenValue = Image(y,x,2);
        
        BlueValue = Image(y,x,3);
        
        
        
        if ( RedValue == 255 && GreenValue == 0  && BlueValue == 0  && f1 == false)
            
            counter = counter + 1;
            
            R(1,:) = [ x y ];
            
            f1 = true;
            
        end
        
        
        
        if ( RedValue == 0 && GreenValue == 255 && BlueValue == 0  && f2 == false )
            
            counter = counter + 1;
           
            R(2,:) = [ x y ];
            
            f2 = true;
            
        end
        
        
        if ( RedValue == 0 && GreenValue == 0 && BlueValue == 255  && f3 == false )
            
            counter = counter + 1;
           
             R(4,:) = [ x y ];
            
            f3 = true;
            
        end
        
        
        if ( RedValue == 255 && GreenValue == 255 && BlueValue == 0  && f4 == false )
            
            counter = counter + 1;
           
             R(3,:) = [ x y ];
            
            f4 = true;
            
        end
        


    end
end


% minX = min(R(:,1));
% 
% minY = min(R(:,2));
% 
% 
% maxX = max(R(:,1));
% 
% maxY = max(R(:,2));
% 
% 
% R = [ minX minX maxX maxX ; minY maxY maxY minY ];



end

