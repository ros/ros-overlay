# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jsk_rqt_plugins package"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_visualization/doc/jsk_rqt_plugins"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/${PN}/2.1.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/image_publisher
	ros-melodic/image_view2
	ros-melodic/jsk_gui_msgs
	ros-melodic/message_runtime
	ros-melodic/qt_gui_py_common
	ros-melodic/resource_retriever
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	ros-melodic/rqt_image_view
	ros-melodic/rqt_plot
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
	sci-libs/scikits_learn
	dev-python/urlgrabber
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/mk
	ros-melodic/rosbuild
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
