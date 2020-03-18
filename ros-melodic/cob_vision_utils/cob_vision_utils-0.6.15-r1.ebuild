# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Contains utilities used within the object detection tool chain."
HOMEPAGE="http://wiki.ros.org/cob_vision_utils"
SRC_URI="https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/${PN}/0.6.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/roscpp
	ros-melodic/visualization_msgs
	media-libs/opencv
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
