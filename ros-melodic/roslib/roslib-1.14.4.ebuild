# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Base dependencies and support libraries for ROS.\
	roslib contains many [...]"
HOMEPAGE="http://ros.org/wiki/roslib"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/melodic/${PN}/1.14.4-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/ros_environment
	ros-melodic/rospack
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
