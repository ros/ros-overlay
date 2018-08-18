# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rosmsg contains two command-line tools: <tt>rosmsg</tt> and\
	<tt>rossrv[...]"
HOMEPAGE="http://ros.org/wiki/rosmsg"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/${PN}/1.13.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/catkin
	ros-lunar/genmsg
	ros-lunar/genpy
	ros-lunar/rosbag
	ros-lunar/roslib
	test? ( ros-lunar/std_msgs )
	dev-python/rospkg
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
