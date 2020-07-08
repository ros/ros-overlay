# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides added functionality on top of rospy, including a\
  s[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/${PN}/2.13.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/std_srvs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
