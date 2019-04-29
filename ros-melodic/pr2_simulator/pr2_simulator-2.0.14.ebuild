# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_simulator package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/melodic/${PN}/2.0.14-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pr2_controller_configuration_gazebo
	ros-melodic/pr2_gazebo
	ros-melodic/pr2_gazebo_plugins
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
