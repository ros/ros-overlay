# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Drive-by-wire interface to the Dataspeed Inc. Polaris GEM/Ranger/RZR DBW kit"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/${PN}/0.0.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/can_msgs
	ros-noetic/dataspeed_can_usb
	ros-noetic/dataspeed_ulc_can
	ros-noetic/dbw_polaris_description
	ros-noetic/dbw_polaris_msgs
	ros-noetic/geometry_msgs
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/roslaunch
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/dataspeed_can_msg_filters
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
