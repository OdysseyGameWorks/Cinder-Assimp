project "Assimp"
        kind "StaticLib"
        language "C++"
        cppdialect "C++17"
        staticruntime "on"
        
        targetdir ("bin/" .. outputdir .. "/%{prj.name}")
        objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

        sysincludedirs {
            "assimp/include",
            "assimp/contrib/irrXML",
            "assimp/contrib/zlib",
            "assimp/contrib/unzip",
            "assimp/contrib/rapidjson/include",
        }
        
        includedirs {
            "assimp/include",
            "assimp/contrib/irrXML",
            "assimp/contrib/zlib",
            "assimp/contrib/rapidjson/include",
        }

        defines {

            "_CRT_SECURE_NO_WARNINGS",
            "_CRT_SECURE_NO_DEPRECATE",

            "ASSIMP_BUILD_NO_OWN_ZLIB",
            "ASSIMP_BUILD_ZLIB",

            "ASSIMP_BUILD_NO_X_IMPORTER",
            "ASSIMP_BUILD_NO_3DS_IMPORTER",
            "ASSIMP_BUILD_NO_MD3_IMPORTER",
            "ASSIMP_BUILD_NO_MDL_IMPORTER",
            "ASSIMP_BUILD_NO_MD2_IMPORTER",
            -- "ASSIMP_BUILD_NO_PLY_IMPORTER",
            "ASSIMP_BUILD_NO_ASE_IMPORTER",
            -- "ASSIMP_BUILD_NO_OBJ_IMPORTER",
            "ASSIMP_BUILD_NO_AMF_IMPORTER",
            "ASSIMP_BUILD_NO_HMP_IMPORTER",
            "ASSIMP_BUILD_NO_SMD_IMPORTER",
            "ASSIMP_BUILD_NO_MDC_IMPORTER",
            "ASSIMP_BUILD_NO_MD5_IMPORTER",
            "ASSIMP_BUILD_NO_STL_IMPORTER",
            "ASSIMP_BUILD_NO_LWO_IMPORTER",
            "ASSIMP_BUILD_NO_DXF_IMPORTER",
            "ASSIMP_BUILD_NO_NFF_IMPORTER",
            "ASSIMP_BUILD_NO_RAW_IMPORTER",
            "ASSIMP_BUILD_NO_OFF_IMPORTER",
            "ASSIMP_BUILD_NO_AC_IMPORTER",
            "ASSIMP_BUILD_NO_BVH_IMPORTER",
            "ASSIMP_BUILD_NO_IRRMESH_IMPORTER",
            "ASSIMP_BUILD_NO_IRR_IMPORTER",
            "ASSIMP_BUILD_NO_Q3D_IMPORTER",
            "ASSIMP_BUILD_NO_B3D_IMPORTER",
            -- "ASSIMP_BUILD_NO_COLLADA_IMPORTER",
            "ASSIMP_BUILD_NO_TERRAGEN_IMPORTER",
            "ASSIMP_BUILD_NO_CSM_IMPORTER",
            "ASSIMP_BUILD_NO_3D_IMPORTER",
            "ASSIMP_BUILD_NO_LWS_IMPORTER",
            "ASSIMP_BUILD_NO_OGRE_IMPORTER",
            "ASSIMP_BUILD_NO_OPENGEX_IMPORTER",
            "ASSIMP_BUILD_NO_MS3D_IMPORTER",
            "ASSIMP_BUILD_NO_COB_IMPORTER",
            -- "ASSIMP_BUILD_NO_BLEND_IMPORTER",
            "ASSIMP_BUILD_NO_Q3BSP_IMPORTER",
            "ASSIMP_BUILD_NO_NDO_IMPORTER",
            "ASSIMP_BUILD_NO_IFC_IMPORTER",
            "ASSIMP_BUILD_NO_XGL_IMPORTER",
            -- "ASSIMP_BUILD_NO_FBX_IMPORTER",
            "ASSIMP_BUILD_NO_ASSBIN_IMPORTER",
            -- "ASSIMP_BUILD_NO_GLTF_IMPORTER",
            "ASSIMP_BUILD_NO_C4D_IMPORTER",
            "ASSIMP_BUILD_NO_3MF_IMPORTER",
            "ASSIMP_BUILD_NO_X3D_IMPORTER",
            "ASSIMP_BUILD_NO_MMD_IMPORTER",
            
            "ASSIMP_BUILD_NO_STEP_EXPORTER",
            "ASSIMP_BUILD_NO_SIB_IMPORTER",

            -- "ASSIMP_BUILD_NO_MAKELEFTHANDED_PROCESS",
            -- "ASSIMP_BUILD_NO_FLIPUVS_PROCESS",
            -- "ASSIMP_BUILD_NO_FLIPWINDINGORDER_PROCESS",
            -- "ASSIMP_BUILD_NO_CALCTANGENTS_PROCESS",
            "ASSIMP_BUILD_NO_JOINVERTICES_PROCESS",
            -- "ASSIMP_BUILD_NO_TRIANGULATE_PROCESS",
            "ASSIMP_BUILD_NO_GENFACENORMALS_PROCESS",
            -- "ASSIMP_BUILD_NO_GENVERTEXNORMALS_PROCESS",
            "ASSIMP_BUILD_NO_REMOVEVC_PROCESS",
            "ASSIMP_BUILD_NO_SPLITLARGEMESHES_PROCESS",
            "ASSIMP_BUILD_NO_PRETRANSFORMVERTICES_PROCESS",
            "ASSIMP_BUILD_NO_LIMITBONEWEIGHTS_PROCESS",
            -- "ASSIMP_BUILD_NO_VALIDATEDS_PROCESS",
            "ASSIMP_BUILD_NO_IMPROVECACHELOCALITY_PROCESS",
            "ASSIMP_BUILD_NO_FIXINFACINGNORMALS_PROCESS",
            "ASSIMP_BUILD_NO_REMOVE_REDUNDANTMATERIALS_PROCESS",
            "ASSIMP_BUILD_NO_FINDINVALIDDATA_PROCESS",
            "ASSIMP_BUILD_NO_FINDDEGENERATES_PROCESS",
            "ASSIMP_BUILD_NO_SORTBYPTYPE_PROCESS",
            "ASSIMP_BUILD_NO_GENUVCOORDS_PROCESS",
            "ASSIMP_BUILD_NO_TRANSFORMTEXCOORDS_PROCESS",
            "ASSIMP_BUILD_NO_FINDINSTANCES_PROCESS",
            "ASSIMP_BUILD_NO_OPTIMIZEMESHES_PROCESS",
            "ASSIMP_BUILD_NO_OPTIMIZEGRAPH_PROCESS",
            "ASSIMP_BUILD_NO_SPLITBYBONECOUNT_PROCESS",
            "ASSIMP_BUILD_NO_DEBONE_PROCESS",
            "ASSIMP_BUILD_NO_EMBEDTEXTURES_PROCESS",
            "ASSIMP_BUILD_NO_GLOBALSCALE_PROCESS",
        }

        files {
            "assimp/include/**",
            "assimp/code/Assimp.cpp",
            "assimp/code/BaseImporter.cpp",
            "assimp/code/BlenderBMesh.cpp",
            "assimp/code/BlenderCustomData.cpp",
            "assimp/code/BlenderDNA.cpp",
            "assimp/code/BlenderLoader.cpp",
            "assimp/code/SceneCombiner.cpp",
            "assimp/code/BlenderModifier.cpp",
            "assimp/code/BlenderScene.cpp",
            "assimp/code/BlenderTessellator.cpp",
            "assimp/code/ColladaLoader.cpp",
            "assimp/code/ColladaParser.cpp",
            "assimp/code/CreateAnimMesh.cpp",
            "assimp/code/PlyParser.cpp",
            "assimp/code/PlyLoader.cpp",
            "assimp/code/BaseProcess.cpp",
            "assimp/code/FBXAnimation.cpp",
            "assimp/code/EmbedTexturesProcess.cpp",
            "assimp/code/FBXBinaryTokenizer.cpp",
            "assimp/code/FBXConverter.cpp",
            "assimp/code/FBXDeformer.cpp",
            "assimp/code/FBXDocument.cpp",
            "assimp/code/FBXDocumentUtil.cpp",
            "assimp/code/FBXImporter.cpp",
            "assimp/code/FBXMaterial.cpp",
            "assimp/code/FBXMeshGeometry.cpp",
            "assimp/code/FBXModel.cpp",
            "assimp/code/FBXNodeAttribute.cpp",
            "assimp/code/FBXParser.cpp",
            "assimp/code/FBXProperties.cpp",
            "assimp/code/FBXTokenizer.cpp",
            "assimp/code/FBXUtil.cpp",
            "assimp/code/ConvertToLHProcess.cpp",
            "assimp/code/DefaultIOStream.cpp",
            "assimp/code/DefaultIOSystem.cpp",
            "assimp/code/DefaultLogger.cpp",
            "assimp/code/GenVertexNormalsProcess.cpp",
            "assimp/code/Importer.cpp",
            "assimp/code/ImporterRegistry.cpp",
            "assimp/code/MaterialSystem.cpp",
            "assimp/code/PostStepRegistry.cpp",
            "assimp/code/ProcessHelper.cpp",
            "assimp/code/scene.cpp",
            "assimp/code/ScenePreprocessor.cpp",
            "assimp/code/ScaleProcess.cpp",
            "assimp/code/SGSpatialSort.cpp",
            "assimp/code/SkeletonMeshBuilder.cpp",
            "assimp/code/SpatialSort.cpp",
            "assimp/code/Subdivision.cpp",
            "assimp/code/TriangulateProcess.cpp",
            "assimp/code/ValidateDataStructure.cpp",
            "assimp/code/Version.cpp",
            "assimp/code/VertexTriangleAdjacency.cpp",
            "assimp/code/ObjFileImporter.cpp",
            "assimp/code/ObjFileMtlImporter.cpp",
            "assimp/code/ObjFileParser.cpp",
            "assimp/code/glTFImporter.cpp",
            "assimp/code/glTF2Importer.cpp",
            "assimp/code/MakeVerboseFormat.cpp",
            "assimp/code/CalcTangentsProcess.cpp",
            "assimp/code/ScaleProcess.cpp",
            "assimp/code/EmbedTexturesProcess.cpp",
            "assimp/contrib/irrXML/*",
        }

        filter "configurations:Debug"
            defines "C_DEBUG"
            runtime "Debug"
            symbols "on"
            optimize "on"
            targetsuffix "-d"
    
        filter "configurations:Release"
            defines "C_RELEASE"
            runtime "Release"
            optimize "on"
    
        filter "configurations:Dist"
            defines "C_DIST"
            runtime "Release"
            optimize "on"
