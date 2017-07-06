# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The rail_object_detector package'"
HOMEPAGE="http://wiki.ros.org/rail_object_detector"
SRC_URI="https://github.com/gt-rail-release/rail_object_detector-release/archive/release/indigo/rail_object_detector/1.0.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_geometry
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

