# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Ecto bindings for common opencv functionality"
HOMEPAGE="http://plasmodic.github.io/ecto_opencv"
SRC_URI="https://github.com/ros-gbp/ecto_opencv-release/archive/release/indigo/ecto_opencv/0.6.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_backports
	ros-indigo/ecto
	ros-indigo/opencv_candidate
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

