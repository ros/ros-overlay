# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Common definitions \(positions, velocities, angular angles,\
	angular ra[...]"
HOMEPAGE="http://github.com/leggedrobotics/xpp"
SRC_URI="https://github.com/leggedrobotics/xpp-release/archive/release/noetic/${PN}/1.0.10-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
