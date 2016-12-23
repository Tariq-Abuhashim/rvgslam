% function batch_demo(robot)
%function batch_demo(robot)
%
% Performs view-graph slam 
% Requirements:
%	1- Robot configuaration file: for examples, see
%		config_heicub(); % for iCub@heidelberg
%		config_icub(); % for iCub@iit
%		config_r1(); % for R1@iit
%	2- Vlfeat, which contains basic features matching tasks
%	3- mexopencv, which contains various Opencv wrappers.
%	4- rvgslam, which contains our robust view-graph slam implementation.
%
%	For all robots.
%
% Tariq Abuhashim
% t.abuhashim@gmail.com
%
% Koroibot, iCub Facility, Istituto Italiano di Tecnologia
% Genova, Italy, 2016

clc; clear all; % FIXME: temporary thing, remove after using this as a function

robot = 'heicub'; %icub, heicub, r1
assert(any(strcmp(robot,{'r1','icub','heicub'})),['Unknown robot: ', robot]);

% setup for icub, heicub, and r1
switch robot
	case 'icub'%iCub@iit
	case 'heicub'%iCub@heidelberg
		[options, encoders, floatingbase] = heicub_config() ;
	case 'r1'%r1@iit
end

% Compute forward kinematics
Pkin = cameras_from_kinematics(encoders, floatingbase) ;

% Perform matching (or tracking) of image correspondences
[C,kpts] = build_camera_graph(options) ;

% Utilise kinematics or epipolar geometry to initialise constraints
C = initialise_graph_constraints(C,kpts,Pkin,options) ; 

% Refined sets of pair-wise geometry constraints using image correspondences
C = optimise_pwg_constraints(C,kpts,options) ;

% Assign constraint weights


% Optimise for global camera poses using all the constraints in the graph
%C = optimise_graph_constraints(C) ;


