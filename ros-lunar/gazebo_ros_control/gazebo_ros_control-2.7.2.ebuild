# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="gazebo_ros_control"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_ros_control/2.7.2-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/control_toolbox
	ros-lunar/controller_manager
	ros-lunar/gazebo_ros
	ros-lunar/hardware_interface
	ros-lunar/joint_limits_interface
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/std_msgs
	ros-lunar/transmission_interface
	ros-lunar/urdf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/gazebo_dev
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

