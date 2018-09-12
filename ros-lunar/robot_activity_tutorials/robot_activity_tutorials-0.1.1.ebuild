# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The robot_activity_tutorials package"
HOMEPAGE="http://www.ros.org/wiki/robot_activity_tutorials"
SRC_URI="https://github.com/snt-robotics/robot_activity-release/archive/release/lunar/${PN}/0.1.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/robot_activity
	ros-lunar/roscpp
	ros-lunar/std_srvs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslint
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
