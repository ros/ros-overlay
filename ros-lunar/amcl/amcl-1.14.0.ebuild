# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="http://wiki.ros.org/amcl"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/amcl/1.14.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/nav_msgs
	ros-lunar/rosbag
	ros-lunar/roscpp
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_filters
	ros-lunar/rostest
	ros-lunar/std_srvs
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

