# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The diagnostic_analysis package can convert a log of diagnostics data\
	[...]"
HOMEPAGE="http://www.ros.org/wiki/diagnostics_analysis"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/${PN}/1.9.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/rosbag
	ros-melodic/roslib
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
