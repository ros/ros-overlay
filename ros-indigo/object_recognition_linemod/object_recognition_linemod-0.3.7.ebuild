# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="An object recognition pipeline that uses LINE-MOD from OpenCV"
HOMEPAGE="https://github.com/wg-perception/linemod"
SRC_URI="https://github.com/ros-gbp/object_recognition_linemod-release/archive/release/indigo/object_recognition_linemod/0.3.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecto
	ros-indigo/object_recognition_core
	ros-indigo/object_recognition_renderer
	ros-indigo/opencv_candidate
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
