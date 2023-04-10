# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS-package that implements a costmap layer populated by observing tf frames."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/igorbanfi/${PN}-release/archive/release/melodic/${PN}/1.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/costmap_2d
	ros-melodic/dynamic_reconfigure
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/tf2_geometry_msgs
	test? ( ros-melodic/roslint )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
