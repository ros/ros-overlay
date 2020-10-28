# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Base dependencies and support libraries for ROS.\
	roslib contains many [...]"
HOMEPAGE="http://wiki.ros.org/roslib"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/noetic/${PN}/1.15.7-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/catkin
	ros-noetic/ros_environment
	ros-noetic/rospack
	test? ( ros-noetic/rosmake )
	dev-python/rospkg
	dev-python/rospkg
	test? ( dev-libs/boost[python] )
"
DEPEND="${RDEPEND}
	dev-libs/boost[threads]
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
