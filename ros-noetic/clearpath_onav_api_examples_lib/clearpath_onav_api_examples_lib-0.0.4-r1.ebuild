# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Examples library to show how to use CPR OutdoorNav API"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/clearpath_onav_examples-release/archive/release/noetic/${PN}/0.0.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/clearpath_msgs
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/wireless_msgs
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
