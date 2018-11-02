# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jsk_rqt_plugins package"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_visualization/doc/jsk_rqt_plugins"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/indigo/${PN}/2.1.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_pipeline
	ros-indigo/image_view2
	ros-indigo/jsk_gui_msgs
	ros-indigo/message_runtime
	ros-indigo/qt_gui_py_common
	ros-indigo/resource_retriever
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/rqt_image_view
	ros-indigo/rqt_plot
	test? ( ros-indigo/roslaunch )
	test? ( ros-indigo/rostest )
	sci-libs/scikits_learn
	dev-python/urlgrabber
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/mk
	ros-indigo/rosbuild
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
