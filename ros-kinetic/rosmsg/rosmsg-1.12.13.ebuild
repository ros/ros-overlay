# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rosmsg contains two command-line tools: <tt>rosmsg</tt> and\
	<tt>rossrv[...]"
HOMEPAGE="http://ros.org/wiki/rosmsg"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/${PN}/1.12.13-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/genmsg
	ros-kinetic/genpy
	ros-kinetic/rosbag
	ros-kinetic/roslib
	test? ( ros-kinetic/std_msgs )
	dev-python/rospkg
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
