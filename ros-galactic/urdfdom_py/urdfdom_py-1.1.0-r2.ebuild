# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Python implementation of the URDF parser."
HOMEPAGE="http://wiki.ros.org/urdfdom_py"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.1.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rclpy
	dev-python/lxml
	dev-python/pyyaml
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
