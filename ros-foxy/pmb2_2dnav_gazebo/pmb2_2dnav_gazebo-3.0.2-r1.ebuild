# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="PMB2-specific launch files needed to run\
	navigation on the PMB2 robot."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/pmb2_simulation-gbp/archive/release/foxy/${PN}/3.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Modified-BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/pmb2_2dnav
	ros-foxy/pmb2_gazebo
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
