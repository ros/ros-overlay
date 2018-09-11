# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Metapackage allowing easy installation of Velodyne simulation components."
HOMEPAGE="http://wiki.ros.org/velodyne_simulator"
SRC_URI="https://github.com/DataspeedInc-release/${PN}-release/archive/release/lunar/${PN}/1.0.8-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/velodyne_description
	ros-lunar/velodyne_gazebo_plugins
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
