# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides small examples for use of the fmi_adapter package"
HOMEPAGE="http://wiki.ros.org/fmi_adapter"
SRC_URI="https://github.com/boschresearch/fmi_adapter-release/archive/release/noetic/${PN}/1.0.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/fmi_adapter
	ros-noetic/roscpp
	ros-noetic/rqt_plot
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
