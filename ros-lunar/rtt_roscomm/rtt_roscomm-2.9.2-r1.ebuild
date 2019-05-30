# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rtt_roscomm provides the necessary template files and cmake macros for\
   [...]"
HOMEPAGE="http://ros.org/wiki/rtt_ros_integration"
SRC_URI="https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/${PN}/2.9.2-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/genmsg
	ros-lunar/roscpp
	ros-lunar/rtt_ros
	ros-lunar/rtt_rosnode
	ros-lunar/rtt_rospack
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
