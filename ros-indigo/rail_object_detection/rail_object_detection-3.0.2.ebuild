# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Object Detection methods used in the RAIL Lab"
HOMEPAGE="http://ros.org/wiki/rail_object_detection"
SRC_URI="https://github.com/gt-rail-release/${PN}-release/archive/release/indigo/${PN}/3.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rail_object_detection_msgs
	ros-indigo/rail_object_detector
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
