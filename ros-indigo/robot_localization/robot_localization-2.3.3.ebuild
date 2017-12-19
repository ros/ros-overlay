# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides nonlinear state estimation through sensor fusion of an abritrary n[...]"
HOMEPAGE="http://ros.org/wiki/robot_localization"
SRC_URI="https://github.com/cra-ros-pkg/${PN}-release/archive/release/indigo/${PN}/2.3.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/geographic_msgs
	ros-indigo/geometry_msgs
	ros-indigo/message_filters
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf2
	ros-indigo/tf2_geometry_msgs
	ros-indigo/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roslint
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
