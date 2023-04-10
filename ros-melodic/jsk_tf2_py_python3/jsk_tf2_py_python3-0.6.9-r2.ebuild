# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The tf2_py package for python3 compatibility in melodic environment. Suppor[...]"
HOMEPAGE="https://github.com/jsk-ros-pkg/geometry2_python3"
SRC_URI="https://github.com/tork-a/geometry2_python3-release/archive/release/melodic/${PN}/0.6.9-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rospy
	ros-melodic/tf2
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
