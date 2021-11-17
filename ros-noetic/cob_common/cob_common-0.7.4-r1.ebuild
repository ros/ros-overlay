# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The cob_common stack hosts common packages that are used within the Care-O-[...]"
HOMEPAGE="http://ros.org/wiki/cob_common"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.7.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_actions
	ros-noetic/cob_description
	ros-noetic/cob_msgs
	ros-noetic/cob_srvs
	ros-noetic/raw_description
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
