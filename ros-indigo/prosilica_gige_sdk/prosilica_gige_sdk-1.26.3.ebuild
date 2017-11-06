# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="AVT GigE SDK version 1.26 for ROS"
HOMEPAGE="http://www.ros.org/wiki/prosilica_gige_sdk"
SRC_URI="https://github.com/ros-drivers-gbp/prosilica_gige_sdk-release/archive/release/indigo/prosilica_gige_sdk/1.26.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
