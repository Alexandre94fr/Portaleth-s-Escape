@ECHO OFF
SET DXC="C:\Unreal Engine\UE_5.3\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Unreal Engine\UE_5.3\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -Zpr -O3 -auto-binding-space 0 -exports MaterialCHS;MaterialAHS -enable-16bit-types -Wno-parentheses-equality -disable-lifetime-markers -T lib_6_6 -Fc RayTracingMaterialHitShaders.d3dasm -Fo RayTracingMaterialHitShaders.dxil RayTracingMaterialHitShaders
:END
PAUSE
