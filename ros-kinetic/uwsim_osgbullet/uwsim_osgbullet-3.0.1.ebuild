# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The OSG Bullet library adapted to UWSim See https://codegooglecom/p/osgbullet"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uji-ros-pkg/uwsim_osgbullet-release/archive/release/kinetic/uwsim_osgbullet/3.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/uwsim_bullet
	ros-kinetic/uwsim_osgworks
	dev-libs/boost
	dev-games/openscenegraph
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

