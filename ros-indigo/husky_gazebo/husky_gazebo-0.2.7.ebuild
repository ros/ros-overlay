# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Clearpath Husky Simulator bringup"
HOMEPAGE="http://ros.org/wiki/husky_gazebo"
SRC_URI="https://github.com/clearpath-gbp/husky_simulator-release/archive/release/indigo/${PN}/0.2.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/hector_gazebo_plugins
	ros-indigo/husky_control
	ros-indigo/husky_description
	ros-indigo/pointcloud_to_laserscan
	ros-indigo/robot_state_publisher
	ros-indigo/rostopic
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
