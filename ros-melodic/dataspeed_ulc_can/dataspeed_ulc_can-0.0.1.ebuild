# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package to translate ROS messages to and from CAN messages to interact with[...]"
HOMEPAGE="https://bitbucket.org/dataspeedinc/dataspeed_ulc_ros"
SRC_URI="https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/${PN}/0.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/can_msgs
	ros-melodic/dataspeed_ulc_msgs
	ros-melodic/geometry_msgs
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
