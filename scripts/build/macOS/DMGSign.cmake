
set( APPLE_CODESIGN_IDENTITY ${CPACK_APPLE_CODESIGN_IDENTITY} )
set( APPLE_NOTARIZATION_USER_NAME ${CPACK_APPLE_NOTARIZATION_USER_NAME} )
set( APPLE_NOTARIZATION_PASSWORD ${CPACK_APPLE_NOTARIZATION_PASSWORD} )
set( PERFORM_NOTARIZATION ${CPACK_PERFORM_NOTARIZATION} )
set( APP_IDENTIFIER "org.saucedacityteam.saucedacity" )

foreach( file ${CPACK_PACKAGE_FILES} )
    set( DMG_LOCATION ${CPACK_PACKAGE_FILES} )   

    include( "${CPACK_APPLE_SIGN_SCRIPTS}/SignMacos.cmake" )

    if( PERFORM_NOTARIZATION )
        include( "${CPACK_APPLE_SIGN_SCRIPTS}/NotarizeMacos.cmake" )
    endif()
endforeach()
