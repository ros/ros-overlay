# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="It provides a grapic user interface to check the status of Dynamixel and co[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench_single_manager_gui"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/${PN}/1.0.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamixel_workbench_msgs
	ros-melodic/dynamixel_workbench_toolbox
	ros-melodic/roscpp
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtcore:5
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
