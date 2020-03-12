# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides templates and scripts for creating qt-ros packages\
	 \(similar[...]"
HOMEPAGE="https://github.com/stonier/qt_ros/issues"
SRC_URI="https://github.com/yujinrobot-release/qt_ros-release/archive/release/melodic/${PN}/0.2.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/qt_build
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
