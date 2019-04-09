# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rosatomic provides the C++11-style atomic operations by pulling symbols fro[...]"
HOMEPAGE="http://ros.org/wiki/rosatomic"
SRC_URI="https://github.com/ros-gbp/ros_realtime-release/archive/release/melodic/${PN}/1.0.25-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD Boost-1.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
