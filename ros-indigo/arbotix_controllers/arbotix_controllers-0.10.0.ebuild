# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Extends the arbotix_python package with a number of more sophisticated ROS wrapp'"
HOMEPAGE="http://ros.org/wiki/arbotix_controllers"
SRC_URI="https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/indigo/arbotix_controllers/0.10.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/arbotix_python
	ros-indigo/tf
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

