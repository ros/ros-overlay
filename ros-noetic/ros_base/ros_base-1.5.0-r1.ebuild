# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A metapackage which extends ros_core and includes other basic non-robot too[...]"
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/noetic/${PN}/1.5.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/bond_core
	ros-noetic/dynamic_reconfigure
	ros-noetic/nodelet_core
	ros-noetic/ros_core
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
