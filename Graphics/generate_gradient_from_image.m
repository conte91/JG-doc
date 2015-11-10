scimmia=imread ("scimmia.png" )
scimmia=double(scimmia)/255.0
scimmia=scimmia(:,:,1)
kx=[-1,0,1;-2,0,2;-1,0,1]
ky=[-1,-2,-1;0,0,0;1,2,1]

gx=conv2(kx,scimmia)
gy=conv2(ky,scimmia)
 
val=(gx.^2+gy.^2).^0.5
normal=val/max(max(val))
imshow(normal)
imwrite(normal,"scimmiagradient.png")
quiver(1:10:size(gx,1)', 1:10:size(gx,2)',gx(1:10:end,1:10:end),gy(1:10:end,1:10:end),4)
