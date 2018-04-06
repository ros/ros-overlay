# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A metapackage to aggregate several packages."
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/${PN}/1.3.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/common_tutorials
	ros-kinetic/geometry_tutorials
	ros-kinetic/robot
	ros-kinetic/ros_tutorials
	ros-kinetic/roslint
	ros-kinetic/visualization_tutorials
	ros-kinetic/viz
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
