# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack contains all software necessary to build systems using both Oroc[...]"
HOMEPAGE="http://ros.org/wiki/rtt_ros_integration"
SRC_URI="https://github.com/orocos-gbp/${PN}-release/archive/release/kinetic/${PN}/2.9.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( GPL-1 BSD LGPL-2 GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rtt_actionlib
	ros-kinetic/rtt_dynamic_reconfigure
	ros-kinetic/rtt_ros
	ros-kinetic/rtt_ros_msgs
	ros-kinetic/rtt_rosclock
	ros-kinetic/rtt_roscomm
	ros-kinetic/rtt_rosdeployment
	ros-kinetic/rtt_rosnode
	ros-kinetic/rtt_rospack
	ros-kinetic/rtt_rosparam
	ros-kinetic/rtt_tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
