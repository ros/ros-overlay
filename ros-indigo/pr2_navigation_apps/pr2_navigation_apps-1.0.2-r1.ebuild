# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_navigation_apps package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/${PN}-release/archive/release/indigo/${PN}/1.0.2-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="TODO"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"