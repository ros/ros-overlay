# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A set of 2D geometry classes modeled after the 3D geometry classes in tf2."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/${PN}-release/archive/release/melodic/${PN}/0.6.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/roscpp
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	test? ( ros-melodic/roslint )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
