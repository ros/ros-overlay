# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides nonlinear state estimation through sensor fusion of an abritrary n[...]"
HOMEPAGE="http://ros.org/wiki/robot_localization"
SRC_URI="https://github.com/cra-ros-pkg/${PN}-release/archive/release/noetic/${PN}/2.6.8-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/eigen_conversions
	ros-noetic/geographic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/message_filters
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/xmlrpcpp
	test? ( ros-noetic/rosbag )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/roslint
	dev-python/catkin_pkg
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
