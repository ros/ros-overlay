# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The tools package\(including SLAM, Navigation, Manipulation\) for OpenManip[...]"
HOMEPAGE="http://wiki.ros.org/open_manipulator_with_tb3_tools"
SRC_URI="https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/kinetic/${PN}/1.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/ar_track_alvar_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/joint_state_publisher
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/moveit_core
	ros-kinetic/moveit_msgs
	ros-kinetic/moveit_ros_planning
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/nav_msgs
	ros-kinetic/open_manipulator_msgs
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/roslaunch
	ros-kinetic/rospy
	ros-kinetic/smach
	ros-kinetic/smach_ros
	ros-kinetic/std_msgs
	ros-kinetic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
