function [Roll,Pitch,Yaw] = q2EulerAngles(q0,q1,q2,q3)

q = sqrt(q0^2 + q1^2 + q2^2 + q3^2);
u1 = q0/q;
u2 = q1/q;
u3 = q2/q;
u4 = q3/q;



Roll = atan2(2*(u3*u4 + u1*u2), u1*u1-u2*u2-u3*u3+u4*u4);

tmp = -2*(u2*u4-u1*u3);

if(tmp>1)
    Pitch = pi/2;
else
    if(tmp<-1)
        Pitch = -pi/2;
    else Pitch = asin(tmp);
    end
end
Yaw = atan2(2*(u2*u3+u1*u4), u1*u1+u2*u2-u3*u3-u4*u4);
end

