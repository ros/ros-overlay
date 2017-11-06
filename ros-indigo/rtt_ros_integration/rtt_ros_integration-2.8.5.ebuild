# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains all software necessary to build systems using both Oroc[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/indigo/rtt_ros_integration/2.8.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( GPL-1 BSD LGPL-2 GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rtt_actionlib
	ros-indigo/rtt_dynamic_reconfigure
	ros-indigo/rtt_ros
	ros-indigo/rtt_ros_msgs
	ros-indigo/rtt_rosclock
	ros-indigo/rtt_roscomm
	ros-indigo/rtt_rosdeployment
	ros-indigo/rtt_rosnode
	ros-indigo/rtt_rospack
	ros-indigo/rtt_rosparam
	ros-indigo/rtt_tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
