# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="grep for ROS bag files and live topics"
HOMEPAGE="http://www.ros.org/wiki/grepros"
SRC_URI="https://github.com/suurjaak/${PN}-release/archive/release/noetic/${PN}/0.5.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/genpy
	ros-noetic/rosbag
	ros-noetic/roslib
	ros-noetic/rospy
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/std_msgs )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
