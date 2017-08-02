# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Base dependencies and support libraries for ROS.\
	roslib contains many of the"
HOMEPAGE="http://ros.org/wiki/roslib"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/lunar/roslib/1.14.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	ros-lunar/rospack
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

