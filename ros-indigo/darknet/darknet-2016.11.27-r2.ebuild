# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Darknet is an open source neural network framework written in C and CUDA It is "
HOMEPAGE="http://pjreddie.com/darknet/"
SRC_URI="https://github.com/tork-a/darknet-release/archive/release/indigo/darknet/2016.11.27-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/opencv
	dev-util/nvidia-cuda-toolkit
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-util/nvidia-cuda-sdk
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

