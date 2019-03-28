# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo package for Fetch."
HOMEPAGE="http://ros.org/wiki/fetch_gazebo"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-release/archive/release/indigo/${PN}/0.7.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/control_toolbox
	ros-indigo/depth_image_proc
	ros-indigo/fetch_description
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/geometry_msgs
	ros-indigo/image_proc
	ros-indigo/nodelet
	ros-indigo/rgbd_launch
	ros-indigo/robot_controllers
	ros-indigo/robot_controllers_interface
	ros-indigo/trajectory_msgs
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/angles
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
