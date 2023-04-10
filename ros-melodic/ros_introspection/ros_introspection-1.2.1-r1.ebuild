# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros_introspection package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/wu-robotics/roscompile-release/archive/release/melodic/${PN}/1.2.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/rosmsg
	test? ( ros-melodic/roslint )
	dev-python/requests
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
