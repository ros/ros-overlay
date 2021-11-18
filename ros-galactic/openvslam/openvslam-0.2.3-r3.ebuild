# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="OpenVSLAM: A Versatile Visual SLAM Framework"
HOMEPAGE="https://openvslam-community.readthedocs.io/"
SRC_URI="https://github.com/OpenVSLAM-Community/${PN}-release/archive/release/galactic/${PN}/0.2.3-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="2-clause BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/libg2o
	dev-cpp/eigen
	dev-cpp/glog
	media-libs/opencv
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
