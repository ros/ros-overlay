# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rwt_plot"
HOMEPAGE="http://wiki.ros.org/rwt_plot"
SRC_URI="https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/${PN}/0.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/rosbridge_server
	ros-melodic/rospy
	ros-melodic/roswww
	ros-melodic/rwt_utils_3rdparty
	ros-melodic/std_msgs
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
