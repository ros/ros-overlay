# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Listens on a ImageFeatures topic, and waits for the data to settle.
	 This pa"
HOMEPAGE="http://www.ros.org/wiki/monocam_settler"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/lunar/monocam_settler/0.10.14-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/actionlib
	ros-lunar/actionlib_msgs
	ros-lunar/rosconsole
	ros-lunar/roscpp_serialization
	ros-lunar/settlerlib
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

