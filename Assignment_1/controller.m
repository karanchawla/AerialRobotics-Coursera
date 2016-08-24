function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

kv = ;
kp = ;
z2 = 0;
e = s_des - s;
u = params.mass*(z2+kp*e(1)+kv*e(2)+params.gravity);

end

