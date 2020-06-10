# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS messages for interacting with the Universal Lat/Lon Controller \(ULC\)"
HOMEPAGE="https://bitbucket.org/dataspeedinc/dataspeed_ulc_ros"
SRC_URI="https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/noetic/${PN}/0.0.5-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
