# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provide a node that extracts checkerboard corners from ROS images.\
	Thi[...]"
HOMEPAGE="http://ros.org/wiki/image_cb_detector"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/indigo/image_cb_detector/0.10.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/calibration_msgs
	ros-indigo/cv_bridge
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/message_filters
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
