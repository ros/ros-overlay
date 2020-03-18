# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_common stack hosts common packages that are used within the Care-O-[...]"
HOMEPAGE="http://ros.org/wiki/cob_common"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/melodic/${PN}/0.7.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_actions
	ros-melodic/cob_description
	ros-melodic/cob_msgs
	ros-melodic/cob_srvs
	ros-melodic/raw_description
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
