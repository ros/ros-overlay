# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The copernicus_description package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/botsync-gbp/copernicus-release/archive/release/melodic/${PN}/1.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/urdf
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
	ros-melodic/velodyne_description
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
