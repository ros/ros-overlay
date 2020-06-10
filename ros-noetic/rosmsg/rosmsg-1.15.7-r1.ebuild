# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rosmsg contains two command-line tools: <tt>rosmsg</tt> and\
	<tt>rossrv[...]"
HOMEPAGE="http://wiki.ros.org/rosmsg"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.15.7-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/catkin
	ros-noetic/genmsg
	ros-noetic/genpy
	ros-noetic/rosbag
	ros-noetic/roslib
	test? ( ros-noetic/std_msgs )
	dev-python/rospkg
	dev-python/rospkg
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
