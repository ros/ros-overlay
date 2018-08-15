# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/${PN}/0.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/can_msgs
	ros-melodic/dataspeed_can_usb
	ros-melodic/dbw_fca_description
	ros-melodic/dbw_fca_msgs
	ros-melodic/geometry_msgs
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/dataspeed_can_msg_filters
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
