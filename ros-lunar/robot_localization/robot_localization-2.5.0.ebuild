# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides nonlinear state estimation through sensor fusion of an abritrary n[...]"
HOMEPAGE="http://ros.org/wiki/robot_localization"
SRC_URI="https://github.com/cra-ros-pkg/${PN}-release/archive/release/lunar/${PN}/2.5.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cmake_modules
	ros-lunar/diagnostic_msgs
	ros-lunar/diagnostic_updater
	ros-lunar/eigen_conversions
	ros-lunar/geographic_msgs
	ros-lunar/geometry_msgs
	ros-lunar/message_filters
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/nodelet
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf2
	ros-lunar/tf2_geometry_msgs
	ros-lunar/tf2_ros
	ros-lunar/xmlrpcpp
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	ros-lunar/roslint
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
