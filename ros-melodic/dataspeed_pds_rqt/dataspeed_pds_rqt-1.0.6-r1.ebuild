# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS rqt GUI for the Dataspeed Inc. Intelligent Power Distribution System \([...]"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/${PN}/1.0.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dataspeed_pds_msgs
	ros-melodic/python_qt_binding
	ros-melodic/rospy
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
