# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The bcap service test package includes a node for testing bcap service node."
HOMEPAGE="http://ros.org/wiki/bcap_service_test"
SRC_URI="https://github.com/DENSORobot/denso_robot_ros-release/archive/release/indigo/${PN}/3.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/bcap_service
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
