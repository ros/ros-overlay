# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This ROS package wraps documentation tools like doxygen, sphinx,
	and epydoc,'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rosdoc_lite-release/archive/release/kinetic/rosdoc_lite/0.2.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/genmsg
	app-doc/doxygen
	dev-python/epydoc
	dev-python/catkin_pkg
	dev-python/kitchen
	dev-python/rospkg
	dev-python/sphinx
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

