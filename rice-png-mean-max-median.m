close all
clear all
clc


%%%
resim=imread('rice.png');

[row,column]=size(resim);

filter_n = 2 %filtre 3 boyutlu fakat matlab son sayıyı dahil ettiği için 2

filter_leng=9; %filtre boyutu : 3*3=9


%%%%%%% oluşacak matrislerin boyutu :
% ((resim_n-filtre_n)/step)+1 * ((resim_n-filtre_n)/step)+1
% 3 adımlı filtre için : ((256-3)/3)+1 = 86* 86
% 1 adımlı filtre için : ((256-3)/1)+1 = 254*254

%%% 3 adım için
mean_3_step=zeros(85,85)
max_3_step=zeros(85,85)
median_3_step=zeros(85,85)


filter_step=3; % adımlar için 

sonucun_satir_numarisi=0;%

sonucun_sutun_numarisi=0;%


for i=1:filter_step:(row-filter_n)
    
    next_i=i+filter_n;%filter n
    
    sonucun_satir_numarisi =sonucun_satir_numarisi + 1;
    
    sonucun_sutun_numarisi=0;%
    
    for j=1:filter_step:(column-filter_n)
        
        next_j=j+filter_n;
        
        
        sub_mat = resim(i:next_i,j:next_j)
        
        sonucun_sutun_numarisi =sonucun_sutun_numarisi + 1;
        
       
        
        mean_3_step(sonucun_satir_numarisi,sonucun_sutun_numarisi)= floor(mean(reshape(sub_mat,[filter_leng,1])));
        
        max_3_step(sonucun_satir_numarisi,sonucun_sutun_numarisi)= max(reshape(sub_mat,[filter_leng,1]));
        
        median_3_step(sonucun_satir_numarisi,sonucun_sutun_numarisi)= median(reshape(sub_mat,[filter_leng,1]));
        
       
        
    end
   
end

%%% 1 adım için
mean_1_step=zeros(254,254)
max_1_step=zeros(254,254)
median_1_step=zeros(254,254)


filter_step=1; % adımlar için 

sonucun_satir_numarisi=0;%

sonucun_sutun_numarisi=0;%


for i=1:filter_step:(row-filter_n)
    
    next_i=i+filter_n;%filter n
    
    sonucun_satir_numarisi =sonucun_satir_numarisi + 1;
    
    sonucun_sutun_numarisi=0;%
    
    for j=1:filter_step:(column-filter_n)
        
        next_j=j+filter_n;
        
        
        sub_mat = resim(i:next_i,j:next_j)
        
        sonucun_sutun_numarisi =sonucun_sutun_numarisi + 1;
        
       
        
        mean_1_step(sonucun_satir_numarisi,sonucun_sutun_numarisi)= floor(mean(reshape(sub_mat,[filter_leng,1])));
        
        max_1_step(sonucun_satir_numarisi,sonucun_sutun_numarisi)= max(reshape(sub_mat,[filter_leng,1]));
        
        median_1_step(sonucun_satir_numarisi,sonucun_sutun_numarisi)= median(reshape(sub_mat,[filter_leng,1]));
        
       
        
    end
   
end


figure,imshow(uint8(median_1_step))
figure,imshow(uint8(max_1_step))
figure,imshow(uint8(mean_1_step))

figure,imshow(uint8(median_3_step))
figure,imshow(uint8(max_3_step))
figure,imshow(uint8(mean_3_step))



