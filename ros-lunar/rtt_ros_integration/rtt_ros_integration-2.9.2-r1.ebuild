# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack contains all software necessary to build systems using both Oroc[...]"
HOMEPAGE="http://ros.org/wiki/rtt_ros_integration"
SRC_URI="https://github.com/orocos-gbp/${PN}-release/archive/release/lunar/${PN}/2.9.2-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="( GPL-1 BSD LGPL-2 GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/rtt_actionlib
	ros-lunar/rtt_dynamic_reconfigure
	ros-lunar/rtt_ros
	ros-lunar/rtt_ros_msgs
	ros-lunar/rtt_rosclock
	ros-lunar/rtt_roscomm
	ros-lunar/rtt_rosdeployment
	ros-lunar/rtt_rosnode
	ros-lunar/rtt_rospack
	ros-lunar/rtt_rosparam
	ros-lunar/rtt_tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
