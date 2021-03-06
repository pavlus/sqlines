# - Try to find the FreeTDS library 
# Once done this will define
#
#  FreeTDS_FOUND - system has FreeTDS
#  FreeTDS_INCLUDE_DIR - the FreeTDS include directory
#  FreeTDS_LIBRARIES - Link these to use FreeTDS


if (FreeTDS_INCLUDE_DIR AND FreeTDS_LIBRARIES )

	# Already in cache
	SET(FREETDS_FOUND TRUE)

else ()

       find_path(FreeTDS_INCLUDE_DIR NAMES sqldb.h sqlfront.h)

       find_library(FreeTDS_LIBRARIES NAMES sybdb )
  
       include(FindPackageHandleStandardArgs)
       find_package_handle_standard_args(FreeTDS DEFAULT_MSG FreeTDS_INCLUDE_DIR FreeTDS_LIBRARIES)

       mark_as_advanced(FreeTDS_INCLUDE_DIR FreeTDS_LIBRARIES)

endif ()
