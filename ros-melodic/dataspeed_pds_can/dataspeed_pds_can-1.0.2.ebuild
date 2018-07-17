# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Interface to the Dataspeed Inc. Power Distribution System \(PDS\) via CAN"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/${PN}/1.0.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/can_msgs
	ros-melodic/dataspeed_can_usb
	ros-melodic/dataspeed_pds_msgs
	ros-melodic/message_filters
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/roslaunch
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/dataspeed_can_msg_filters
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
