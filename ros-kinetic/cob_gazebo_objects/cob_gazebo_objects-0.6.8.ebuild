# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides some objects and furniture for gazebo simulation."
HOMEPAGE="http://ros.org/wiki/cob_gazebo_objects"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_objects/0.6.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_description
	ros-kinetic/gazebo_ros
	ros-kinetic/roslaunch
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

