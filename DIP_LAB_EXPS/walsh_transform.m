I=imread('dip_img.jpeg');
sig=rgb2gray(I);
sig=double(sig)/255; 
%figure, imshow(sig);
[m_sig,n_sig]=size(sig);

sizi=16; 
Snum=128;

T=hadamard (sizi);

hdcoe=blkproc(sig, [sizi sizi], 'P1*x*P2',T,T); 
coe=im2col (hdcoe, [sizi sizi], 'distinct');
coe_temp=coe;

[Y, Ind]=sort(coe);
[m,n]=size(coe);

Snum=m-Snum; 
for i=1:n
    coe_temp(Ind(1:Snum), i)=0;
end
re_hdcoe=col2im(coe_temp,[sizi sizi],[m_sig n_sig], 'distinct'); 
re_sig=blkproc(re_hdcoe, [sizi sizi], 'P1*x*P2',T,T);

%figure, imshow(uint8(re_sig));

error=sig.^2-re_sig.^2;
MSE=sum(error(:)/prod(size(re_sig)))

subplot(1,2,1), imshow(sig),title('Input image');; 
subplot(1,2,2), imshow(uint8(re_sig)) , title('walsh transformed image');;
