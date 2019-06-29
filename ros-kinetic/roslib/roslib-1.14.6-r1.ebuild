# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Base dependencies and support libraries for ROS.\
	roslib contains many [...]"
HOMEPAGE="http://ros.org/wiki/roslib"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/kinetic/${PN}/1.14.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/ros_environment
	ros-kinetic/rospack
	test? ( ros-kinetic/rosmake )
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
