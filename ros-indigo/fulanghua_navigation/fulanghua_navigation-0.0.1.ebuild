# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The fulanghua_navigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DaikiMaekawa/fulanghua_navigation-release/archive/release/indigo/fulanghua_navigation/0.0.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/fulanghua_ekf_2d
	ros-indigo/fulanghua_srvs
	ros-indigo/fulanghua_static_path_publisher
	ros-indigo/fulanghua_waypoints_nav
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
