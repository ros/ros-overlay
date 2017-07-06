# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The rocon_app_utilities package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_app_platform-release/archive/release/indigo/rocon_app_utilities/0.7.13-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rocon_console
	ros-indigo/rocon_python_utils
	ros-indigo/rocon_uri
	ros-indigo/roslaunch
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

