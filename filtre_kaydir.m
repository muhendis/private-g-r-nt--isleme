%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% örneği anlamk açısından %%%%%%%%%%%%%
close all
clear all
clc

a = [1,1,1,2,2,2;
    1,1,1,2,2,2;
    1,1,1,2,2,2;
    3,3,3,4,4,4;
    3,3,3,4,4,4;
    3,3,3,4,4,4];%sondaki ; ekrana basma


row=6;

column=6;

filter_n = 2 %filtre 3 boyutlu fakat matlab son sayıyı dahi ettiği için 2

filter_step=1; % 1 ve 3 adımları için yap


for i=1:filter_step:(row-filter_n)
    
    next_i=i+filter_n;%filter n
    
    for j=1:filter_step:(column-filter_n)
        
        next_j=j+filter_n;
        
        a(i:next_i,j:next_j)
        
       
        
    end
   
end

