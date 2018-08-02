# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Extends the arbotix_python package with a number of more sophisticated ROS [...]"
HOMEPAGE="http://ros.org/wiki/arbotix_controllers"
SRC_URI="https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/melodic/${PN}/0.10.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/arbotix_python
	ros-melodic/tf
	ros-melodic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
