# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A port of the old tabletop object recognition"
HOMEPAGE="http://ecto.willowgarage.com"
SRC_URI="https://github.com/ros-gbp/object_recognition_tabletop-release/archive/release/indigo/object_recognition_tabletop/0.3.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecto
	ros-indigo/moveit_core
	ros-indigo/object_recognition_core
	ros-indigo/object_recognition_msgs
	ros-indigo/opencv_candidate
	ros-indigo/pluginlib
	ros-indigo/tf
	media-libs/assimp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	media-libs/assimp
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

