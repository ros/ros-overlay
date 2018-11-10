# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This metapackage depends on the SMACH library and ROS SMACH integration\
  [...]"
HOMEPAGE="http://ros.org/wiki/smach"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/2.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/smach
	ros-melodic/smach_msgs
	ros-melodic/smach_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
