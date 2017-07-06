# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Contains utilities used within the object detection tool chain.'"
HOMEPAGE="http://wiki.ros.org/cob_vision_utils"
SRC_URI="https://github.com/ipa320/cob_perception_common-release/archive/release/indigo/cob_vision_utils/0.6.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/roscpp
	ros-indigo/visualization_msgs
	media-libs/opencv
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

