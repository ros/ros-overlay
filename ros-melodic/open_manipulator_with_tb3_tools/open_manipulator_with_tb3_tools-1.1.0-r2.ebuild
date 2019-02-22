# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The tools package\(including SLAM, Navigation, Manipulation\) for OpenManip[...]"
HOMEPAGE="http://wiki.ros.org/open_manipulator_with_tb3_tools"
SRC_URI="https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/melodic/${PN}/1.1.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/amcl
	ros-melodic/ar_track_alvar_msgs
	ros-melodic/geometry_msgs
	ros-melodic/joint_state_publisher
	ros-melodic/map_server
	ros-melodic/move_base
	ros-melodic/moveit_core
	ros-melodic/moveit_msgs
	ros-melodic/moveit_ros_planning
	ros-melodic/moveit_ros_planning_interface
	ros-melodic/nav_msgs
	ros-melodic/open_manipulator_msgs
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/rospy
	ros-melodic/smach
	ros-melodic/smach_ros
	ros-melodic/std_msgs
	ros-melodic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
