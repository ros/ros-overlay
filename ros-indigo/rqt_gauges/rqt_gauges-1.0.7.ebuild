# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rqt_gauges package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UTNuclearRoboticsPublic/gauges-release/archive/release/indigo/rqt_gauges/1.0.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_cpp
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
