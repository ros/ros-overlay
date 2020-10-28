# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS rqt GUI for the Dataspeed Inc. Power Distribution System \(PDS\)"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/noetic/${PN}/1.0.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dataspeed_pds_msgs
	ros-noetic/python_qt_binding
	ros-noetic/rospy
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
