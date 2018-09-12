# Copyright 1999-2017 Gentoo Foundation
# Copyright 2018 Open Source Robotics Foundation, Inc.
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: ament-cmake.eclass
# @MAINTAINER:
# hunter@openrobotics.org
# @AUTHOR:
# Alexis Ballier <aballier@gentoo.org>
# Hunter L. Allen <hunter@openrobotics.org>
# @BLURB: Template eclass for ament based ROS2 packages.
# @DESCRIPTION:
# Provides function for building ROS2 cmake packages on Gentoo.

case "${EAPI:-0}" in
	0|1|2|3|4)
		die "EAPI='${EAPI}' is not supported"
		;;
	*)
		;;
esac

# @ECLASS-VARIABLE: ROS_REPO_URI
# @DESCRIPTION:
# URL of the upstream repository. Usually on github.
# Serves for fetching tarballs, live ebuilds and inferring the meta-package name.
# EGIT_REPO_URI="${ROS_REPO_URI}"

# @ECLASS-VARIABLE: ROS_SUBDIR
# @DEFAULT_UNSET
# @DESCRIPTION:
# Subdir in which current packages is located.
# Usually, a repository contains several packages, hence a typical value is:
# ROS_SUBDIR=${PN}

# @ECLASS-VARIABLE: PYTHON_COMPAT
# @DESCRIPTION:
# Tells the eclass the package has python code and forwards it to python-r1.eclass.
PYTHON_ECLASS=""
AMENT_PYTHON_USEDEP=""
if [ -n "${PYTHON_COMPAT}" ] ; then
	PYTHON_ECLASS="python-r1"
fi
inherit ${SCM} ${PYTHON_ECLASS} cmake-utils flag-o-matic

AMENT_DO_PYTHON_MULTIBUILD=""
if [ -n "${PYTHON_COMPAT}" ] ; then
	AMENT_PYTHON_USEDEP="[${PYTHON_USEDEP}]"
	AMENT_DO_PYTHON_MULTIBUILD="yes"
	REQUIRED_USE="${PYTHON_REQUIRED_USE}"
fi

IUSE="test"
RDEPEND="
dev-python/empy${AMENT_PYTHON_USEDEP}
"
DEPEND="${RDEPEND}"

if [ -n "${AMENT_DO_PYTHON_MULTIBUILD}" ] ; then
	RDEPEND="${RDEPEND} ${PYTHON_DEPS}"
	DEPEND="${DEPEND} ${PYTHON_DEPS}"
fi

S=${WORKDIR}/${P}

HOMEPAGE="http://wiki.ros.org/${PN}"

# @FUNCTION: ament-cmake_src_prepare
# @DESCRIPTION:
# Rename the extracted folder.
ament-cmake_src_unpack() {
	default
	mv *${P}* ${P}
}

# @FUNCTION: ros-catkin_src_prepare
# @DESCRIPTION:
# Calls cmake-utils_src_prepare (so that PATCHES array is handled there) and initialises the workspace
# by installing a recursive CMakeLists.txt to handle bundles.
ament-cmake_src_prepare() {
	# If no multibuild, just use cmake IN_SOURCE support
	[ -n "${AMENT_IN_SOURCE_BUILD}" ] && [ -z "${AMENT_DO_PYTHON_MULTIBUILD}" ] && export CMAKE_IN_SOURCE_BUILD=yes

	cmake-utils_src_prepare

	# If python multibuild, copy the sources
	[ -n "${AMENT_IN_SOURCE_BUILD}" ] && [ -n "${AMENT_DO_PYTHON_MULTIBUILD}" ] && python_copy_sources
}

# @FUNCTION: ros-catkin_src_configure_internal
# @DESCRIPTION:
# Internal decoration of cmake-utils_src_configure to handle multiple python installs.
ament-cmake_src_configure_internal() {
	export PYTHONPATH="${EPREFIX%/}/${ROS_PREFIX%/}/lib64/${EPYTHON}/site-packages"
	if [ -f ${EPREFIX%/}/${ROS_PREFIX%/}/setup.bash ]; then
		source ${EPREFIX%/}/${ROS_PREFIX%/}/setup.bash
	fi
	if [[ -z $CPP11 ]]; then
		append-cxxflags '-std=c++11'
	fi
	if [ -n "${AMENT_DO_PYTHON_MULTIBUILD}" ] ; then
		# Figure out if the system uses lib64 or lib folder
		local sitedir="$(python_get_sitedir)";
		if [[ $sitedir = *"lib64"* ]]; then
		    local lib_str="lib64"
		else
			local lib_str="lib"
		fi
		local mycmakeargs=(
			-DPYTHON_EXECUTABLE="${PYTHON}"
			"-DPYTHON_INSTALL_DIR=${lib_str}/${EPYTHON}/site-packages"
			"${mycmakeargs[@]}"
		)
		python_export PYTHON_SCRIPTDIR
		if [ -n "${AMENT_IN_SOURCE_BUILD}" ] ; then
			export CMAKE_USE_DIR="${BUILD_DIR}"
		fi
	fi
	cmake-utils_src_configure "${@}"
}

# @VARIABLE: mycatkincmakeargs
# @DEFAULT_UNSET
# @DESCRIPTION:
# Optional cmake defines as a bash array. Should be defined before calling
# src_configure.

# @FUNCTION: ros-catkin_src_configure
# @DESCRIPTION:
# Configures a catkin-based package.
ament-cmake_src_configure() {
	if [ -f /${ROS_PREFIX}/setup.bash ]; then
		source /${ROS_PREFIX}/setup.bash
	fi
	if [[ -z $CPP11 ]]; then
		append-cxxflags '-std=c++11'
	fi

	export AMENT_PREFIX_PATH="${EPREFIX%/}/${ROS_PREFIX}"
	export ROS_ROOT="${EPREFIX%/}/${ROS_PREFIX}"
	export DEST_SETUP_DIR="${EPREFIX%/}/${ROS_PREFIX}"
	if [ -z $BUILD_BINARY ]; then
		export BUILD_BINARY="1"
	fi
	local mycmakeargs=(
		-DAMENT_ENABLE_TESTING="$(usex test 1 0)"
		-DAMENT_BUILD_BINARY_PACKAGE=${BUILD_BINARY}
		-DCMAKE_PREFIX_PATH=${SYSROOT:-${EPREFIX%/}}/${ROS_PREFIX}
		-DCMAKE_INSTALL_PREFIX=${EPREFIX%/}/${ROS_PREFIX}
		${mycmakeargs[@]}
	)
	cmake-utils_src_configure
	if [ -n "${AMENT_DO_PYTHON_MULTIBUILD}" ] ; then
		python_foreach_impl ament-cmake_src_configure_internal "${@}"
	else
		ament-cmake_src_configure_internal "${@}"
	fi
}

# @FUNCTION: ros-catkin_src_compile
# @DESCRIPTION:
# Builds a catkin-based package.
ament-cmake_src_compile() {
	if [ -f ${EPREFIX%/}/${ROS_PREFIX}/setup.bash ]; then
		source ${EPREFIX%/}/${ROS_PREFIX}/setup.bash
	fi

	rm -f ${WORKDIR}/${P}/README* # prevents conflicts

	if [ -n "${AMENT_DO_PYTHON_MULTIBUILD}" ] ; then
		if [ -n "${AMENT_IN_SOURCE_BUILD}" ] ; then
			export CMAKE_USE_DIR="${BUILD_DIR}"
		fi
		python_foreach_impl cmake-utils_src_compile "${@}"
	else
		cmake-utils_src_compile "${@}"
	fi
}

# @FUNCTION: ros-catkin_src_test_internal
# @DESCRIPTION:
# Decorator around cmake-utils_src_test to ensure tests are built before running them.
ament-cmake_src_test_internal() {
	cd "${BUILD_DIR}" || die
	# Regenerate env for tests, PYTHONPATH is not set properly otherwise...
	if [ -f catkin_generated/generate_cached_setup.py ] ; then
		einfo "Regenerating setup_cached.sh for tests"
		${PYTHON:-python} catkin_generated/generate_cached_setup.py || die
	fi
	# Using cmake-utils_src_make with nonfatal does not work and breaks e.g.
	# dev-ros/rviz.
	if nonfatal emake tests -n &> /dev/null ; then
		cmake-utils_src_make tests
	fi
	cmake-utils_src_test "${@}"
}

# @FUNCTION: ros-catkin_src_test
# @DESCRIPTION:
# Run the tests of a catkin-based package.
ros-catkin_src_test() {
	if [ -n "${AMENT_DO_PYTHON_MULTIBUILD}" ] ; then
		python_foreach_impl ros-catkin_src_test_internal "${@}"
	else
		ros-catkin_src_test_internal "${@}"
	fi
}

# @FUNCTION: ros-catkin_src_install_with_python
# @DESCRIPTION:
# Decorator around cmake-utils_src_install to ensure python scripts are properly handled w.r.t. python-exec2.
ament-cmake_src_install_with_python() {
	python_scriptinto ${EPREFIX%/}/${ROS_PREFIX}/bin
	python_export PYTHON_SCRIPTDIR
	if [ -n "${AMENT_IN_SOURCE_BUILD}" ] ; then
		export CMAKE_USE_DIR="${BUILD_DIR}"
	fi
	cmake-utils_src_install "${@}"
	if [ ! -f "${T}/.catkin_python_symlinks_generated" -a -d "${D}/${PYTHON_SCRIPTDIR}" ]; then
		dodir /usr/bin
		for i in "${D}/${PYTHON_SCRIPTDIR}"/* ; do
			dosym ../lib/python-exec/python-exec2 "/usr/bin/${i##*/}"
		done
		touch "${T}/.catkin_python_symlinks_generated" || die
	fi
}

# @FUNCTION: ros-catkin_src_install
# @DESCRIPTION:
# Installs a catkin-based package.
ament-cmake_src_install() {
	if [ -n "${AMENT_DO_PYTHON_MULTIBUILD}" ] ; then
		python_foreach_impl ament-cmake_src_install_with_python "${@}"
	else
		cmake-utils_src_install "${@}"
	fi
}

EXPORT_FUNCTIONS src_unpack src_prepare src_configure src_compile src_install
