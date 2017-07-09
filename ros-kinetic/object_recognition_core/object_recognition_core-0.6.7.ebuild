# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="object_recognition_core contains tools to launch several recognition pipelines, "
HOMEPAGE="http://wg-perception.github.io/object_recognition_core/"
SRC_URI="https://github.com/ros-gbp/object_recognition_core-release/archive/release/kinetic/object_recognition_core/0.6.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecto
	ros-kinetic/ecto_image_pipeline
	ros-kinetic/sensor_msgs
	dev-libs/boost
	dev-db/couchdb
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

