# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'cob_gazebo_plugins meta-package'"
HOMEPAGE="http://ros.org/wiki/cob_gazebo_plugins"
SRC_URI="https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/indigo/cob_gazebo_plugins/0.6.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_gazebo_ros_control
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

