function [Endpoints Bifurcations] = ExtractMinutiae(InputImage)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[H W L ] = size(InputImage);

Endpoints = zeros(H,W);

Bifurcations = zeros(H,W);

imshow(InputImage);

hold on;

index1 = 1;

index2 = 1;

p1 = 255;

p2 = 255;

p3 = 255;

p4 = 255;

p5 = 255;

p6 = 255;

p7 = 255;

p8 = 255;


% if L > 1 
%    
%     InputImage = rgb2gray(InputImage);
%     
% end


counter = 0;


for y = 1 : H
    
    counter = 0;
    
    for x = 1 : W
          
        
        if ( InputImage(y,x) == 255 || Endpoints(y,x) == 1 || Bifurcations(y,x) == 1 )
           
            continue;
            
        end
        
        
        
        
        try
            p1 = InputImage(y,x-1);
            
            p2 = InputImage(y,x+1);
             
            p3 = InputImage(y-1,x-1);
              
            p4 = InputImage(y-1,x);
            
            p5 = InputImage(y-1,x+1);
            
            p6 = InputImage(y+1,x-1);
            
            p7 = InputImage(y+1,x);
            
            p8 = InputImage(y+1,x+1);
        
        catch ME
            
            p1 = 255;
            
            p2 = 255;
            
            p3 = 255;
            
            p4 = 255;
            
            p5 = 255;
            
            p6 = 255;
            
            p7 = 255;
            
            p8 = 255;
            
            
            
            continue;
            
        end
        
        
        
        
        
        
        
        
        
        if ( p1 == 0 ) 
            
           counter = counter + 1; 
        
        end
        
        
        if ( p2 == 0 ) 
            
           counter = counter + 1; 
        
        end
        
        if ( p3 == 0  ) 
            
           counter = counter + 1; 
        
        end
        
        if ( p4 == 0  ) 
            
           counter = counter + 1; 
        
        end
        
        if ( p5 == 0 ) 
            
           counter = counter + 1; 
        
        end
        
        if ( p6 == 0 ) 
            
           counter = counter + 1; 
        
        end
        
        if ( p7 == 0 ) 
            
           counter = counter + 1; 
        
        end
        
        if ( p8 == 0 ) 
            
           counter = counter + 1; 
        
        end
        
        
        if( counter ==  1 )
           
            
            %plot(x,y,'ro');
            
            
            Endpoints(y,x) = 1;
            
            Endpoints(y-1,x) = 1;
            
            Endpoints(y-1,x-1) = 1;
            
            Endpoints(y-1,x+1) = 1;
            
            Endpoints(y+1,x) = 1;
            
            Endpoints(y+1,x+1) = 1;
            
            Endpoints(y+1,x-1) = 1;
            
            Endpoints(y,x) = 1;
            
            Endpoints(y,x) = 1;
            
            index1 = index1 + 1;
            
  
            
        end
        
        
        if( counter == 4)
            
            plot(x,y,'bo');
            
            Bifurcations(y,x) = 1;
            
            Bifurcations(y-1,x) = 1;
            
            Bifurcations(y-1,x-1) = 1;
            
            Bifurcations(y-1,x+1) = 1;
            
            Bifurcations(y+1,x) = 1;
            
            Bifurcations(y+1,x+1) = 1;
            
            Bifurcations(y+1,x-1) = 1;
            
            Bifurcations(y,x) = 1;
            
            Bifurcations(y,x) = 1;
            
            index2 = index2 + 1;

            
        end
        
        
        
        counter = 0;
  
        
    end
    
end

hold off;


end

