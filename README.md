# ROCO507_Venipuncture
Method for Autonomous Venipuncture - Samson Afolabi and Ashley Foster for ROCO507

This repository contains the final STL file for the Autonomous Venipuncture Robot, the mathematics for calculating the statics and forward kinematics (in Matlab files), some images detailing different aspects of the robot, a video demonstrating the joint capabilities, and a CoppeliaSim file for running a simulation of the robot.

When running the simulation, it can either be moved using the Object/Item Shift menu, or via the following command:
sim.setObjectPosition(sim.getObjectHandle('Target'), sim.getObjectHandle('Base'), {X,Y,Z})

{X,Y,Z} corresponds to the position required. Please note the various joints each have their own limits and trying to go further may produce unwanted results.