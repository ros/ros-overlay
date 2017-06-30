# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="jsk_hark_msgs"
HOMEPAGE="http://ros.org/wiki/jsk_hark_msgs"
SRC_URI="https://github.com/tork-a/jsk_common_msgs-release/archive/release/lunar/jsk_hark_msgs/4.2.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/message_runtime
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

