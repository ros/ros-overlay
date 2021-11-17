# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>\
		 gmcl, which stands for general monte carlo localization,\
   [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/adler-1994/${PN}-release/archive/release/noetic/${PN}/1.0.1-3.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/rosbag
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_srvs
	ros-noetic/tf2
	ros-noetic/tf2_msgs
	ros-noetic/tf2_ros
	test? ( ros-noetic/map_server )
	test? ( ros-noetic/rostest )
	test? ( dev-python/python_orocos_kdl )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_filters
	ros-noetic/tf2_geometry_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
