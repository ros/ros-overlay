# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A wrapper for the libmongocxx for mongodb_store"
HOMEPAGE="https://github.com/mongodb/mongo-cxx-driver"
SRC_URI="https://github.com/strands-project-releases/mongodb_store/archive/release/indigo/${PN}/0.4.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roscpp
	dev-libs/boost
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	app-misc/ca-certificates
	dev-vcs/git
	dev-util/scons
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
