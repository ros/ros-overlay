# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package gives transparency between RTM and ROS.\
\
	 rtmros-data-br[...]"
HOMEPAGE="http://ros.org/wiki/rosnode_rtc"
SRC_URI="https://github.com/tork-a/rtmros_common-release/archive/release/melodic/${PN}/1.4.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/openrtm_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roscpp_tutorials
	ros-melodic/rospy
	ros-melodic/rostopic
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
