# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains all software necessary to build systems using both Orocos an"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_ros_integration/2.9.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

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

