n=1;
for u1=(-180:20:180)
    for u2=(-105:20:105)
        for u3=(-86:20:160)
            for u4=(-200:20:200)
                for u5=(-150:20:150) 
                        k1=u1*pi/180;
                         k2=u2*pi/180;
                          k3=u3*pi/180;
                           k4=u4*pi/180;
                            k5=u5*pi/180;
X=54.15*sin(k5)*(cos(k4)*(cos(k1)*cos(k2)*cos(k3)-cos(k1)*sin(k2)*sin(k3))-sin(k4)*(cos(k1)*cos(k2)*sin(k3)+cos(k1)*cos(k3)*sin(k2)))-54.15*sin(k1)*sin(k5)-77.7*sin(k1)-50*cos(k4)*(cos(k1)*cos(k2)*sin(k3)+cos(k1)*cos(k3)*sin(k2))-50*sin(k4)*(cos(k1)*cos(k2)*cos(k3)-cos(k1)*sin(k2)*sin(k3))+424.4*cos(k1)*cos(k2)+375.6*cos(k1)*cos(k2)*cos(k3)-375.6*cos(k1)*sin(k2)*sin(k3);
Y=77.7*cos(k1)+424.4*cos(k2)*sin(k1)+54.15*cos(k1)*sin(k5)-50*cos(k4)*(cos(k2)*sin(k1)*sin(k3)+cos(k3)*sin(k1)*sin(k2))-50*sin(k4)*(cos(k2)*cos(k3)*sin(k1)-sin(k1)*sin(k2)*sin(k3))+54.15*sin(k5)*(cos(k4)*(cos(k2)*cos(k3)*sin(k1)-sin(k1)*sin(k2)*sin(k3))-sin(k4)*(cos(k2)*sin(k1)*sin(k3)+cos(k3)*sin(k1)*sin(k2)))+375.6*cos(k2)*cos(k3)*sin(k1)-375.6*sin(k1)*sin(k2)*sin(k3);
Z=50*cos(k4)*cos(k2-k3)-424.4*sin(k2)-sin(k5)*(54.15*sin(k2-k3)*cos(k4)-54.15*sin(k4)*cos(k2 - k3)) - 375.6*sin(k2 - k3) + 50*sin(k2 - k3)*sin(k4);
K(n,1)=X;
K(n,2)=Y;
K(n,3)=Z;
n=n+1;
               end
            end
        end
    end
end
f = convhulln(K);
trisurf(f,K(:,1),K(:,2),K(:,3))

 

