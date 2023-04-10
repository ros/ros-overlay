# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Messages for vehicle automation"
HOMEPAGE="http://github.com/astuff/automotive_autonomy_msgs"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/3.0.4-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/automotive_navigation_msgs
	ros-humble/automotive_platform_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ros_environment
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
