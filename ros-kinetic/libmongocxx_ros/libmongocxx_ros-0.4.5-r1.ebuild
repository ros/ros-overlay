# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A wrapper for the libmongocxx for mongodb_store"
HOMEPAGE="https://github.com/mongodb/mongo-cxx-driver"
SRC_URI="https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/${PN}/0.4.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roscpp
	dev-libs/boost[python]
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	app-misc/ca-certificates
	dev-vcs/git
	dev-util/scons
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
