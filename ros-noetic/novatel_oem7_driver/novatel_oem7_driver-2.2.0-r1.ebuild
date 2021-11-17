# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="NovAtel Oem7 ROS Driver"
HOMEPAGE="http://www.novatel.com"
SRC_URI="https://github.com/novatel-gbp/${PN}-release/archive/release/noetic/${PN}/2.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/gps_common
	ros-noetic/nav_msgs
	ros-noetic/nmea_msgs
	ros-noetic/nodelet
	ros-noetic/novatel_oem7_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf2_geometry_msgs
	test? ( ros-noetic/rosbag )
	test? ( ros-noetic/rostest )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
