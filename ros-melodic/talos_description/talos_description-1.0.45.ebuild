# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The talos_description package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/talos_robot-release/archive/release/melodic/${PN}/1.0.45-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/talos_description_calibration
	ros-melodic/talos_description_inertial
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/urdf_test )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
