# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/indigo/${PN}/1.0.13-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/can_msgs
	ros-indigo/dataspeed_can_usb
	ros-indigo/dbw_mkz_description
	ros-indigo/dbw_mkz_msgs
	ros-indigo/dbw_mkz_twist_controller
	ros-indigo/geometry_msgs
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/roslaunch
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	test? ( ros-indigo/roslaunch )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/dataspeed_can_msg_filters
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
