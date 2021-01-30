# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Interface to the Dataspeed Inc. Intelligent Power Distribution System \(iPD[...]"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/noetic/${PN}/1.0.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/can_msgs
	ros-noetic/dataspeed_can_usb
	ros-noetic/dataspeed_pds_msgs
	ros-noetic/message_filters
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/roslaunch
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/dataspeed_can_msg_filters
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
