# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Provides nonlinear state estimation through sensor fusion of an abritrary number"
HOMEPAGE="http://ros.org/wiki/robot_localization"
SRC_URI="https://github.com/cra-ros-pkg/robot_localization-release/archive/release/lunar/robot_localization/2.4.0-1.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/cmake_modules
	ros-lunar/diagnostic_msgs
	ros-lunar/diagnostic_updater
	ros-lunar/geographic_msgs
	ros-lunar/geometry_msgs
	ros-lunar/message_filters
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf2
	ros-lunar/tf2_geometry_msgs
	ros-lunar/tf2_ros
	ros-lunar/xmlrpcpp
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	ros-lunar/roslint
	dev-python/catkin_pkg
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

