# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Metapackage allowing easy installation of Velodyne simulation components"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/kinetic/velodyne_simulator/1.0.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/velodyne_description
	ros-kinetic/velodyne_gazebo_plugins
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

