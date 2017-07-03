# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="The diagnostic_analysis package can convert a log of diagnostics data
	into a"
HOMEPAGE="http://www.ros.org/wiki/diagnostics_analysis"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/diagnostic_analysis/1.9.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/diagnostic_msgs
	ros-lunar/rosbag
	ros-lunar/roslib
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

