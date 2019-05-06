# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="libqt-dev metapackage supporting qt4 and qt5"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/indigo/${PN}/0.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( United States Government Purpose SwRI Proprietary )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
