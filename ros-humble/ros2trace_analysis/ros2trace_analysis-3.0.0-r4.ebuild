# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="The trace-analysis command for ROS 2 command line tools."
HOMEPAGE="https://index.ros.org/p/ros2trace_analysis/"
SRC_URI="https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/humble/${PN}/3.0.0-4.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ros2cli
	ros-humble/tracetools_analysis
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_mypy )
	test? ( ros-humble/ament_pep257 )
	test? ( ros-humble/ament_xmllint )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
