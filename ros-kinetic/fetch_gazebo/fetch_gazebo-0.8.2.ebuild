# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo package for Fetch."
HOMEPAGE="http://ros.org/wiki/fetch_gazebo"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-release/archive/release/kinetic/${PN}/0.8.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/control_toolbox
	ros-kinetic/depth_image_proc
	ros-kinetic/fetch_description
	ros-kinetic/gazebo_plugins
	ros-kinetic/gazebo_ros
	ros-kinetic/geometry_msgs
	ros-kinetic/image_proc
	ros-kinetic/nodelet
	ros-kinetic/rgbd_launch
	ros-kinetic/robot_controllers
	ros-kinetic/robot_controllers_interface
	ros-kinetic/trajectory_msgs
	ros-kinetic/xacro
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-kinetic/angles
	ros-kinetic/catkin
	=sci-electronics/gazebo-7*
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
