# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A metapackage to aggregate several packages."
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/PR2-prime/pr2_metapackages-release/archive/release/indigo/${PN}/1.1.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/desktop_full
	ros-indigo/pr2_apps
	ros-indigo/pr2_base
	ros-indigo/pr2_ethercat_drivers
	ros-indigo/pr2_navigation
	ros-indigo/pr2_power_drivers
	ros-indigo/pr2_simulator
	ros-indigo/rqt_pr2_dashboard
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
