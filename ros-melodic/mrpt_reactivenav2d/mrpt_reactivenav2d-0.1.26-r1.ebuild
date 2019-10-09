# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Reactive navigation for 2D robots using MRPT navigation algorithms \(TP-Space\)"
HOMEPAGE="http://wiki.ros.org/mrpt_reactivenav2d"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/${PN}/0.1.26-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/mrpt1
	ros-melodic/mrpt_bridge
	ros-melodic/roscpp
	ros-melodic/tf
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
