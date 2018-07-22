# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides launch files for running  <a href=\"http://ros.org/wi[...]"
HOMEPAGE="http://ros.org/wiki/cob_navigation_slam"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/indigo/${PN}/0.6.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/cob_mapping_slam
	ros-indigo/cob_navigation_config
	ros-indigo/cob_navigation_global
	ros-indigo/rviz
	test? ( ros-indigo/cob_supported_robots )
	test? ( ros-indigo/roslaunch )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
